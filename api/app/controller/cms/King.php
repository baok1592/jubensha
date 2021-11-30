<?php


namespace app\controller\cms;


use app\service\UserValidata;
use ruhua\bases\BaseController;
use app\model\King as KingModel;
use think\facade\Log;

class King extends BaseController
{
    public function getAll(){
        $res =KingModel::select();
        return app('json')->go($res);
    }
    public function addUser(){
        $data=input('post.');
        (new UserValidata())->kingUser($data);
        Log::error($data['name']);
        $res=KingModel::create($data);
        return app('json')->go($res);
    }
    public function upUser(){
        $data=input('post.');
        (new UserValidata())->kingUser($data);
        $res=KingModel::update($data);
        return app('json')->go($res);
    }
    public function delUser($id){
        $res=KingModel::destroy($id);
        return app('json')->go($res);
    }
}