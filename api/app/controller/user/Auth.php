<?php


namespace app\controller\user;

use app\controller\server\Auto;
use app\controller\server\Xcx as app;
use app\service\XcxService;
use ruhua\bases\BaseController;
use ruhua\exceptions\BaseException;
use ruhua\services\TokenService;
use app\model\User as UserModel;
use think\facade\Log;
use think\facade\Request;
use app\model\SysConfig;

class Auth extends BaseController
{

    public function getCode($ucid=""){
        $response = (new app())->gzh($ucid)->oauth->scopes(['snsapi_base'])->redirect();
        return $response->send();  
    }
    public function gzhGrant($ucid=""){
        $response = (new app())->gzh($ucid,'/weixin/gzh_upinfos')->oauth->scopes(['snsapi_userinfo'])->redirect();
        return $response->send();  
    }
    public function gzhUpinfo($ucid='3'){
       $user=(new app())->gzh($ucid)->oauth->user();
        Log::error($user);
         $res =UserModel::where('openid_gzh',$user->getId())->update([
            'name'=>base64_encode($user->getNickname()),
            'headpic'=>$user->getAvatar()
        ]);
         $api_u = SysConfig::where('key', 'api_url')->where('ucid',$ucid)->value('value');
        $api_url=$api_u.'pages/user/user';
        Log::error($api_url);
        return "<script>
        window.location.href='$api_url';
        </script>" ;  
    }
     public function getgzhToken($ucid=0){
        // $token['token']=(new Auto())->gzhLogin($ucid);
        // $api_url="http://card.ruhuashop.com/h5/#/?token=".$token['token'];
        // return "<script>
        // localStorage.setItem('token','{$token['token']}');
        // localStorage.setItem('aging_request',0);
        // window.location.href='$api_url';
        // </script>";
        $token['token']=(new Auto())->gzhLogin($ucid);
        return app('json')->go($token);
    }
    
    public function delUser($id){
        $res =UserModel::destroy($id);
        return app('json')->go($res);
    }
    public function loginXcx($code){
        $res['token'] = (new XcxService())->loginXcx($code);
        return app('json')->go($res);
    }
    public function verifyToken(){
        $token=Request::header('token');
        $res1=(new TokenService())->verifyToken($token);
        if($res1){
            return app('json')->success(true);
        }else{
            return app('json')->success(false);
        }
    }
    public function upInfo(){
        $post =input('post.');
        $id=TokenService::getCurrentUid();
        $res =UserModel::update([
            'id'=>$id,
            'name'=>base64_encode($post['nickname']),
            'headpic'=>$post['headpic']
        ]);
        if(!$res){
            throw new BaseException(['msg'=>'更新失败']);
        }
        return app('json')->go($res);
    }

    public function getInfo(){
        $id=TokenService::getCurrentUid();
        $res =UserModel::find($id);
        if(!$res){
            throw new BaseException(['msg'=>'更新失败']);
        }
        return app('json')->go($res);
    }


}