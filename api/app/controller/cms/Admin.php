<?php


namespace app\controller\cms;


use app\model\User;
use app\service\CmsService;
use app\service\DataValidata;
use ruhua\bases\BaseController;
use app\model\Admin as AdminModel;
use ruhua\exceptions\BaseException;
use app\model\SysConfig;
class Admin extends BaseController
{
    public function getConfig(){
        $res= SysConfig::select();
        return app('json')->go($res);
    }
    public function getHome(){
        $res[]= \app\model\Script::select()->count();
        $res[]=User::select()->count();
        $res[]=\app\model\Store::select()->count();
        return app('json')->go($res);
    }
    public function upConfig(){
        $data=input("post.");
        $res= (new SysConfig())->saveAll($data);
        return app('json')->go($res);
    }
    public function getAll(){
        $res =AdminModel::select();
        $res->visible(['username','login_time','nickname',"id"]);
        return app('json')->go($res);
    }

    public function addAdmin(){
        $data =input("post.");
        (new DataValidata())->addAdmin($data);
        $res =AdminModel::createAdmin($data);
        return app('json')->go($res);
    }
    public function upAdmin(){
        $data =input("post.");
        (new DataValidata())->upAdmin($data);
        $res =AdminModel::updateAdmin($data);
        return app('json')->go($res);
    }
    public function delAdmin($id){
        $res =AdminModel::destroy($id);
        return app('json')->go($res);
    }

    public function loginService(){
        $data =input("post.");
        $res= (new CmsService())->loginService($data['user'],$data['password']);
        return app('json')->go($res);
    }

}