<?php


namespace app\service;


use ruhua\exceptions\BaseException;
use ruhua\services\TokenService;
use app\model\Admin as AdminModel;
use think\facade\Request;

class CmsService extends TokenService
{
    private $rule;

    public function loginService($user,$pwd){
        $password=password($pwd);
        $where=[
            'username'=>$user,
            'password'=>$password
        ];
        $user = AdminModel::where($where)->find();
        if(!$user){
            throw new BaseException(['msg'=>'账号或密码错误！']);
        }
        $cachedValue=$this->setInfo($user);
        $res['token'] = $this->saveCache($cachedValue);
        $res['nickname']=$user->nickname;
        $user->save(['ip'=>Request::ip(),'login_time'=>time()]);
        return $res;
    }
    //组合该账号的各种信息
    protected function setInfo($user){
        $cache['admin_id'] = $user['id'];
        $cache['username'] = $user['username'];
        return $cache;
    }
}