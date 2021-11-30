<?php


namespace app\controller\cms;


use app\service\DataValidata;
use ruhua\bases\BaseController;
use app\model\Banner as BannerModel;
use ruhua\exceptions\BaseException;

class Banner extends BaseController
{
    public function getAll(){
        $res = BannerModel::with(["img","store"])->select();
        return app('json')->go($res);
    }

    public function addBanner(){
        $data =input('post.');
        (new DataValidata())->bannerValidate($data);
        $res = (new BannerModel())->addBanner($data);
        return app('json')->go($res);
    }
    public function upBanner(){
        $data =input('post.');
        (new DataValidata())->upbannerValidate($data);
        $res = (new BannerModel())->upBanner($data);
        return app('json')->go($res);
    }
    public function delBanner($id){
        $res=BannerModel::destroy($id);
        if(!$res){
            throw new BaseException(["msg"=>'删除失败']);
        }
        return app('json')->go($res);
    }
}