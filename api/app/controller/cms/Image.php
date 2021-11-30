<?php


namespace app\controller\cms;


use ruhua\bases\BaseController;
use app\model\Image as ImageModel;


class Image extends BaseController
{

    public function uploadImg(){

        $res=(new ImageModel())->uploads();
        return app('json')->go($res);
    }

    public function delImg($ids){
        $res =(new ImageModel())->delImg($ids);
        return app('json')->go($res);
    }
    public function getAll(){
        $res = ImageModel::select();
        return app('json')->go($res);
    }
}