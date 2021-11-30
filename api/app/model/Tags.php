<?php


namespace app\model;


use ruhua\bases\BaseModel;
use think\facade\Log;

class Tags extends BaseModel
{
    protected $type=[
      'type'=>'json'
    ];

    /**
     * 子孙树 用于菜单整理
     * @param $param 分类数据
     * @param int $pid 父级id
     * 先循环找出顶级分类，找到顶级分类之后再根据改顶级分类的id循环找到该顶级分类的子类，
     * 使用static修饰变量可以保留每次循环的更改
     */
    public static function sortAll($param, $pid = 0){
        static $res = [];
        foreach($param as $key=>$vo){
            if( $pid == $vo['p_id'] ){
                $res[] = $vo;
                if($vo['is_visible']==1){
                    $param[$key]['is_visible']=true;
                }else{
                    $param[$key]['is_visible']=false;
                }
                self::sortAll($param, $vo['id']);
            }
        }
        return $res;
    }
}