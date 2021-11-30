<?php


namespace app\controller\cms;


use app\service\DataValidata;
use ruhua\bases\BaseController;
use app\model\Tags as TagsModel;

class Tags extends BaseController
{
    public function getSortAll(){
        $res = TagsModel::select();
        $res = TagsModel::sortAll($res);
        return app('json')->go($res);
    }
    public function addTag(){
        $data=input("post.");
        $res = TagsModel::create($data);
        return app('json')->go($res);
    }
    public function upTag(){
        $data=input("post.");
        (new DataValidata()) ->upTagValidate($data);
        $res = TagsModel::update($data);
        return app('json')->go($res);
    }
    public function delTag($id){
        $res = TagsModel::destroy($id);
        return app('json')->go($res);
    }
}