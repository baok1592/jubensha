<?php


namespace app\controller\user;


use ruhua\bases\BaseController;
use app\model\User as UserModel;
use ruhua\services\TokenService;
use app\model\ScriptHort;
class User extends BaseController
{
    public function getKing(){
        $res['king'] = UserModel::order('num','desc')->limit(10)->select();
        $id=TokenService::getCurrentUid();
        $res['my']=UserModel::where('id',$id)->find();
        return app('json')->go($res);
    }
    public function addHort($id){
        $form=[
            'u_id'=>TokenService::getCurrentUid(),
            's_id'=>$id
        ];
        $res =ScriptHort::create($form);
        return app('json')->go($res);
    }
    public function getHort(){
        $id=TokenService::getCurrentUid();
        $res=UserModel::with('hort.img')->where('id',$id)->find();
        return app('json')->go($res['hort']);
    }
    public function delHort($id){
        $res=ScriptHort::destroy($id);
        return app('json')->go($res);
    }
}