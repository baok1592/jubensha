<?php


namespace app\model;



use ruhua\bases\BaseModel;
use ruhua\exceptions\BaseException;
use think\Exception;
use think\facade\Db;
use think\facade\Filesystem;
use think\model\concern\SoftDelete;

class Image extends BaseModel
{
    use SoftDelete;
    public  function uploads(){
        $file=request()->file('img');
        $up_data=array();
        $filename=$file->getOriginalExtension();
        if($filename!="jpg"&&$filename!="jpeg"&&$filename!="png"&&$filename!="gif"){
            throw new BaseException(['msg'=>'非图片上传']);

        }
        try {
            //保存图片
            $savename =Filesystem::disk('public')->putFile('img',$file,'data');
            //修改为可访问的路径
            $savename =str_replace("\\",'/',$savename);
            $up_data['url']="/uploads/".$savename;
            $res =self::create($up_data);
            return $res;
        }catch (Exception $e){
            throw new BaseException(['msg'=>$e->getMessage()]);
        }
    }
    public function delImg($ids){
        $data =self::find($ids);
        Db::startTrans();
        try {
            $result =self::destroy($data['id']);
            unlink( $_SERVER['DOCUMENT_ROOT'].$data['url']);        //删除本地保存的图片
            Db::commit();
        }catch (Exception $e){
            Db::rollback();
            throw new BaseException(['msg'=>$e->getMessage()]);
        }
        return $result;
    }


}