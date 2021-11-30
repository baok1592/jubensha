<?php


namespace app\controller\user;


use ruhua\bases\BaseController;

use app\model\Script as ScriptModel;
use app\model\Store as StoreModel;
use app\model\User as UserModel;
class Store extends BaseController
{
    public function getScript($id){
        $res = ScriptModel::with('img')->where("store_id",$id)->select();
        return app('json')->go($res);
    }
    public function getHotScript($id){
        $res = ScriptModel::with('img')->where("store_id",$id)->where("hot",1)->select();
        return app('json')->go($res);
    }
    public function getAll($id=0){
        if($id===0){
            $res = StoreModel::select();
        }else{
            $res =StoreModel::where('id',$id)->find();
        }
        return app('json')->go($res);
    }
}