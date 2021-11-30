<?php


namespace app\controller\server;


use app\model\SysConfig;
use EasyWeChat\Factory;
use think\facade\Log;
class Xcx
{
    public function Xcx_App($ucid=""){
        $wq=config('setting.wq');
        if($wq==0){
            $appid = SysConfig::where('key', 'wx_app_id')->value('value');
            $secret = SysConfig::where('key', 'wx_app_secret')->value('value');
        }else{
            $appid = SysConfig::where(['key'=>'wx_app_id','ucid'=>$ucid])->value('value');
            $secret = SysConfig::where(['key'=>'wx_app_secret','ucid'=>$ucid])->value('value');
        }

        $config = [
            'app_id' => $appid,
            'secret' => $secret,
            // 下面为可选项
            // 指定 API 调用返回结果的类型：array(default)/collection/object/raw/自定义类名
            'response_type' => 'array',
            'log' => [
                'level' => 'error',
                'file' => ROOT.'/storage/logs/wechat.log',
            ],
        ];
        //dump($config);
        $app=Factory::miniProgram($config);
        return $app;
    }
    public function gzh($ucid,$href='/h5/'){
        $wq=config('setting.wq');
        if($wq==1){
            $appid = SysConfig::where(['key'=>'gzh_appid','ucid'=>$ucid])->value('value');
            $secret = SysConfig::where(['key'=> 'gzh_secret','ucid'=>$ucid])->value('value');
            $url='/addons/qy_wmdcs/tp6/public/index.php/'.$href.'?ucid='.$ucid;
        }else{
            $appid = SysConfig::where('key', 'gzh_appid')->value('value');
            $secret = SysConfig::where('key', 'gzh_secret')->value('value');
            $url=$href;
        }
        $config = [
            'app_id' => $appid,
            'secret' => $secret,
            // 指定 API 调用返回结果的类型：array(default)/collection/object/raw/自定义类名
            'response_type' => 'array',
            'oauth' => [
                'scopes'   => ['snsapi_base'],
                'callback' => $url,
            ],
        ];
        $app = Factory::officialAccount($config);
        return $app;
    }

}