<?php


namespace app\service;


use app\model\SysConfig as SysConfigModel;
use EasyWeChat\Factory;
use ruhua\exceptions\BaseException;
use app\model\User as UserModel;
use ruhua\services\TokenService;


class XcxService
{
    private $config=[
        'app_id' => '',
        'secret' => '',

    ];
    public function __construct()
    {
        $config=[
            'app_id'=>SysConfigModel::where('key','wx_app_id')->value('value'),
            'secret'=>SysConfigModel::where('key','wx_app_secret')->value('value'),
            'response_type'=>'array',
            'log' => [
                'level' => 'debug',
                'file' => __DIR__.'/wechat.log',
            ],
        ];
        $this->config=$config;
    }
    public function login($code)
    {
        $app = Factory::miniProgram($this->config);
        return $app->auth->session($code);
    }
    //使用curl获取openid
    protected function geturl($url){
        $headerArray =array("Content-type:application/json;","Accept:application/json");
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch,CURLOPT_HTTPHEADER,$headerArray);
        $output = curl_exec($ch);
        curl_close($ch);
        $output = json_decode($output,true);
        return $output;
    }

    /**
     * 使用curl登录微信获取token
     * @param $code 微信code
     * @return string 字符token
     * @throws BaseException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function loginXcx($code){
        $url= "https://api.weixin.qq.com/sns/jscode2session?appid=".$this->config['app_id']."&secret=".$this->config['secret']."&js_code=".$code."&grant_type=authorization_code";
        $wx=$this->geturl($url);
        if(isset($wx['errmsg'])){
            throw new BaseException(['msg'=>$wx['errmsg']]);
        }
        $user=UserModel::where('openid',$wx['openid'])->find();
        if(!$user){
            $user=UserModel::create([
                'openid'=>$wx['openid'],
                'session_key'=>$wx['session_key']
            ]);
        }
        $info=[
            'uid'=>$user['id'],
            'openid'=>$user['openid']
        ];
        $res= (new TokenService())->saveCache($info);
        //$res = (new XcxService())->login($code);
        return $res;
    }
}