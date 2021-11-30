<?php


namespace app\controller\server;


use app\model\Group as GroupModel;
use app\model\GroupRule as GroupRuleModel;
use ruhua\exceptions\BaseException;
use ruhua\exceptions\TokenException;
use app\model\SysConfig;
use app\model\User as UserModel;
use app\controller\server\Xcx as app;
use ruhua\services\TokenService;



class Auto
{
    public function getToken($code,$ucid)
    {
        $xcx=new app();
        $wxResult=$xcx->Xcx_App($ucid)->auth->session($code);
        if (empty($wxResult)) {
            throw new TokenException('获取session_key及openID时异常，微信内部错误');
        }else{
            $loginFail = array_key_exists('errcode', $wxResult);
            if ($loginFail){
                $this->WxError($wxResult);
            }else{
                if($ucid!='')
                    $wxResult['ucid']=$ucid;
                else
                    $wxResult['ucid']="";
                return $this->grantToken($wxResult);
            }
        }
    }

    public function gzhLogin($ucid="")
    {
        $user=(new app())->gzh($ucid)->oauth->user();
        $data['openid']=$user->getId();
        return $this->gzh_grantToken($user,$ucid);
    }


    public function gzh_grantToken($user,$ucid)
    {
        $openid=$user->getId();
        $dt=UserModel::where('openid_gzh',$openid)->find();
        if(!$dt){
            $data=[
                'openid_gzh'=>$openid,
                'openid'=>$openid,
                'nickname'=>base64_encode($user->getNickname()),
                'headpic'=>$user->getAvatar(),
                'invite_code'=>rand(1000000,9999999),
                'ucid'=>$ucid
            ];
            $dt=UserModel::create($data);
        }
        $user['ucid']=$ucid;
        $user['openid']=$openid;
        $cachedValue = $this->setWxCache($user, $dt['id'],$ucid);
        $token = (new TokenService())->saveCache($cachedValue);
        /*$wq=config('setting.wq');
        if($wq==0){
            $rule=$this->get_rule_auth($dt['group_id']);
            (new CacheService())->save($token,$rule);
        }*/
        return $token;
    }

    //openid，uid放入缓存，$token做缓存键名;
    private function grantToken($wxResult)
    {
        $mergeMode = SysConfig::where('key', 'merge_mode')->value('value');
        $data=[];
        if (array_key_exists('unionid', $wxResult) && $mergeMode == 1) {
            $user = UserModel::where('unionid', $wxResult['unionid'])->find();
            if($user){
                $opid = UserModel::where(['openid' => $wxResult['openid'], 'unionid' => $wxResult['unionid']])->find();
                if ($opid) {
                    $uid = $opid['id'];
                } else {
                    $user->save(['openid' => $wxResult['openid']]);
                    $uid = $user['id'];
                    //(new MergeService())->mergeUser($uid, 'openid', $wxResult['openid'], 2);//合并
                }
            }else{
                $opid = UserModel::where(['openid'=>$wxResult['openid'],'ucid'=>$wxResult['ucid']])->find();
                if ($opid) {
                    $opid->save(['ucid' => $wxResult['ucid']]);
                    $uid = $opid['id'];
                } else {
                    $data['openid']=$wxResult['openid'];
                    $data['ucid']=$wxResult['ucid'];
                    if (array_key_exists('ucid', $wxResult)) {
                        $data['ucid'] = $wxResult['ucid'];
                    }
                    $data['invite_code']=rand(1000000,9999999);
                    $new_user = UserModel::create($data);
                    $uid = $new_user['id'];
                }
            }
        } else {
            $user_id = UserModel::where(['openid'=>$wxResult['openid'],'ucid'=>$wxResult['ucid']])->value('id');
            $user = UserModel::find($user_id);
            if ($user_id) {
                $uid = $user_id;
            } else {
                $data['openid']=$wxResult['openid'];
                if (array_key_exists('ucid', $wxResult)) {
                    $data['ucid'] = $wxResult['ucid'];
                }
                $data['invite_code']=rand(1000000,9999999);
                $new_user = UserModel::create($data);
                $uid = $new_user['id'];
            }
        }
        $cachedValue = $this->setWxCache($wxResult, $uid,$wxResult['ucid']);


        $token = (new TokenService())->saveCache($cachedValue);


      /*  $wq=config('setting.wq');
        if($wq==0){
            $rule=$this->get_rule_auth($user['group_id']);
            (new CacheService())->save($token,$rule);
        }*/
        return $token;
    }


    //组合uid，openid，权限
    private function setWxCache($wxResult, $uid,$ucid='')
    {
        $user=UserModel::find($uid);
        if(!isset($wxResult['ucid']))
            $wxResult['ucid']=2;
        $cache['uid'] = $uid;
        $cache['web_auth']=$user['web_auth'];
        $cache['scope'] = 9;
        $cache['openid']=$wxResult['openid'];
        $cache['ucid']=$ucid;
        if($user['web_auth']>0){

            $cache['group']=$user['group_id'];
        }
        return $cache;
    }


    private function get_rule_auth($id)
    {
        $group=GroupModel::find($id);
        $user_rule=GroupRuleModel::where(['id'=>$group['rule']])->column('route');
        $user_rules=array();
        foreach ($user_rule as $k=>$v){
            $arr=explode(',',$v);
            $user_rules=array_merge($arr,$user_rules);
        }
        $rules=array();
        $rule=GroupRuleModel::column('route');
        foreach ($rule as $k=>$v){
            $arr=explode(',',$v);
            $rules=array_merge($arr,$rules);
        }
        $res=array();
        foreach ($rules as $k=>$v){
            if(in_array($v,$user_rules))
                $res[]=[
                    'name'=>$v,
                    'auth'=>true
                ];
            else
                $res[]=[
                    'name'=>$v,
                    'auth'=>false
                ];
        }
        return ['rule'=>$res];
    }

    //微信错误信息解析后抛出
    private function WxError($wxResult)
    {
        throw new BaseException(['msg'=>$wxResult['errmsg']]);
    }


}