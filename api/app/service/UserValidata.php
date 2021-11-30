<?php


namespace app\service;


use ruhua\exceptions\BaseException;
use think\Validate;

class UserValidata
{
    protected $batchValidate = false;

    public function kingUser($data){
        $rule=[
            "name"=>"require",
            "img_id"=>"require",
            "num"=>"require",
            "store_id"=>"require"
        ];
        $message=[];
        $this->validata($data,$rule,$message);
    }
    public function upkingUser($data){
        $rule=[
            "id"=>"require",
            "nickname"=>"require",
            "img_id"=>"require",
            "num"=>"require",
            "store_id"=>"require"
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