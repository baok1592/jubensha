<?php


namespace app\controller\cms;

use app\model\Script as ScriptModel;
use app\service\DataValidata;
use ruhua\bases\BaseController;

class Script extends BaseController
{

    public function getScript($id){
        $res['script'] = ScriptModel::with(['img','jobs','stores'])->where('id',$id)->find();
        $res['script']->hidden(['img_id'])->toArray();
        //$res['tags'] =  $res['script']->tags;
        return app('json')->go($res);
    }
    public function getTypeScript($type,$sid){
        $res=ScriptModel::with(['img'])->where('type','like',$type)->where('store_id',$sid)->select();
        return app('json')->go($res);
    }

    public function changeValue($id,$hot){
        $res = ScriptModel::update(['id'=>$id,'hot'=>$hot]);
        return app('json')->go($res);
    }

    public function getAll(){
        $res = ScriptModel::with(['img','jobs','stores'])->order('id',"desc")->select();
        $res->hidden(['img_id']);
        return app('json')->go($res);
    }
    public function addScript(){
        $data =input('post.');

        (new DataValidata())->scriptValidate($data);
        $res = (new ScriptModel())->addScript($data);
        return app('json')->go($res);
    }
    public function upScript(){
        $data =input('post.');
        (new DataValidata())->upscriptValidate($data);
        $res = (new ScriptModel())->upScript($data);
        return app('json')->go($res);
    }
    public function delScript($id){
        $res = ScriptModel::destroy($id);
        return app('json')->go($res);
    }
}