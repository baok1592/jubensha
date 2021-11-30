<?php


namespace app\service;


use ruhua\exceptions\BaseException;
use think\Validate;


class DataValidata
{
    protected $batchValidate = false;

    public function bannerValidate($data){
        $rule=[
            'name'=>'require',
            'img_id'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function upbannerValidate($data){
        $rule=[
            'id'=>'require',
            'name'=>'require',
            'img_id'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function scriptValidate($data){
        $rule=[
            'title'=>'require',
            'img_id'=>'require',
            'store_id'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function upscriptValidate($data){
        $rule=[
            'id'=>'require',
            'title'=>'require',
            'img_id'=>'require',
            'store_id'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function peopleValidate($data){
        $rule=[
            's_id'=>'require',
            'img_id'=>'require',
            'name'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function uppeopleValidate($data){
        $rule=[
            'id'=>'require',
            's_id'=>'require',
            'img_id'=>'require',
            'name'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }

    public function storeValidate($data){
        $rule=[
            'name'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function upstoreValidate($data){
        $rule=[
            "id"=>"require",
            'name'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function upTagValidate($data){
        $rule=[
            "id"=>"require",
            'name'=>'require',
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function addAdmin($data){
        $rule=[
          "username"=>"require",
          "password"=>"require"
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function upAdmin($data){
        $rule=[
            "username"=>"require",
            "id"=>"require"
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }

    /**
     * @param array $data   需要验证的数据
     * @param $validata     验证规则
     * @param array $message    验证时的报错信息
     * @param bool $batch       是否开启批量验证
     */
    protected function validata(array $data,array $validata=[],array $message,bool $batch = false){
            $v =new Validate();
            $v->rule($validata);
            $v->message($message);
            if ($batch || $this->batchValidate) {
                $v->batch(true);
            }
        $result=$v->check($data);
        if (!$result){
            throw new BaseException(['msg' => $v->getError()]);
        }else{
            return true;
        }
    }
}