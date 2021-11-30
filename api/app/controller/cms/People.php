<?php


namespace app\controller\cms;

use app\model\People as PeopleModel;
use app\service\DataValidata;
use ruhua\bases\BaseController;

class People extends BaseController
{

    public function getJob($id){
       $res =PeopleModel::with('img')->where("s_id","=",$id)->select();
       return app('json')->go($res);
    }

    public function addJob(){
        $data=input('post.');
        (new DataValidata())->peopleValidate($data);
        $res = PeopleModel::addPeople($data);
        return app('json')->go($res);
    }
    public function delJob($id){
        $res = PeopleModel::destroy($id);
        return app('json')->go($res);
    }

    public function upJob($id){
        $data=input('post.');
        (new DataValidata())->uppeopleValidate($data);
        $res=PeopleModel::update($data);
        return app('json')->go($res);
    }
}