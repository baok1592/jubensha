<?php


namespace app\controller\cms;


use app\service\DataValidata;
use ruhua\bases\BaseController;
use app\model\Store as StoreModel;
class Store extends BaseController
{
    public function getAll(){
        $res = StoreModel::select();
        return app('json')->go($res);
    }
    public function addStore(){
        $data =input('post.');
        (new DataValidata())->storeValidate($data);
        $res =StoreModel::create($data);
        return app('json')->go($res);
    }
    public function upStore(){
        $data =input('post.');
        (new DataValidata())->upstoreValidate($data);
        $res =StoreModel::update($data);
        return app('json')->go($res);
    }
    public function delStore($id){
        $res =StoreModel::destroy($id);
        return app('json')->go($res);
    }
}