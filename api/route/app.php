<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\facade\Route;

Route::get('', function () {
    echo '剧本杀系统'.VAE_VERSION.'(开源板)';
});
//系统安装
Route::group('install', function () {
    Route::get('', 'install.Index/step1');
    Route::get('step2', 'install.Index/step2');
    Route::get('step3', 'install.Index/step3');
    Route::post('create_data', 'install.Index/createData');
});


/**
 * 用户管理 xxx
 */
Route::group('user', function () {
    Route::group('', function () {
        Route::put('/login', 'User/userLogin'); //模拟用户登录
        Route::get('wxcode_url', 'User/wxcodeUrl');   //请求公众号code
        Route::get('gzh_token', 'User/getToken');   //异步接收公众号code,获取openid，返回token
        Route::get('/info', 'User/getInfo'); //获取用户基础信息
        Route::post('get_xcx_token', 'User/getXcxToken');   //小程序获取用户token
        Route::post('token_verify', 'User/verifyToken');   //验证用户token
        Route::post('upinfo', 'User/xcx_upinfo');   //更新用户昵称、头像
        Route::post('get_mobile_token', 'User/getMobileToken');   //获取手机登录的token
        Route::post('/get_yzm', 'User/getYzm'); //单纯的获取验证码
        Route::post('/bind_phone', 'User/bind_phone'); //单纯的绑定手机号
        Route::post('edit_phone', 'User/editMobile'); //单纯的绑定手机号
        Route::post('verify_yzm', 'User/verifyYzm'); //单纯的绑定手机号
    });
    Route::group('admin', function () {
        Route::get('get_all_user', 'cms.UserManage/getAllUser');//获取所有用户信息
    });
});

/**
 * 图片
 */

Route::group('cms',function (){
    Route::get("img_all",'cms.Image/getAll');//查看全部图片
   Route::post('upload_img','cms.Image/uploadImg');//上传图片
   Route::delete('del_img','cms.Image/delImg');//删除图片
})->middleware('CheckCms');

/**
 * 轮播图
 */
Route::group('banner',function (){
    Route::get('banner_all','cms.Banner/getAll');       //查询全部轮播图
    Route::post('add_banner','cms.Banner/addBanner');   //添加轮播图
    Route::post('up_banner','cms.Banner/upBanner');     //修改轮播图
    Route::delete('del_banner','cms.Banner/delBanner'); //删除轮播图
})->middleware('CheckCms');

/**
 * 剧本
 */
Route::group('script',function (){
    Route::put('change_off','cms.Script/changeValue');      //修改热门
    Route::get('get_script','cms.Script/getScript');       //查询某个剧本信息
    Route::get('script_all','cms.Script/getAll');       //查询全部剧本
    Route::post('add_script','cms.Script/addScript');   //添加剧本
    Route::post('up_script','cms.Script/upScript');     //修改剧本
    Route::delete('del_script','cms.Script/delScript'); //删除剧本
})->middleware('CheckCms');

/**
 * 角色
 */
Route::group('people',function (){
    Route::get('get_job','cms.People/getJob');      //查询角色
    Route::post('up_job','cms.People/upJob');      //修改角色
    Route::post('add_job','cms.People/addJob');     //创建角色
    Route::delete('del_job', 'cms.People/delJob');  //删除角色
})->middleware('CheckCms');

/**
 * 店铺
 */
Route::group('store',function (){
    Route::get('get_all','cms.Store/getAll');      //查询全部店铺
    Route::post('up_store','cms.Store/upStore');        //修改店铺
    Route::post('add_store','cms.Store/addStore');     //创建店铺
    Route::delete('del_store', 'cms.Store/delStore');  //删除店铺
})->middleware('CheckCms');
/**
 * 排行榜
 */
Route::group('king',function (){
    Route::get('get_all','cms.King/getAll');        //查询排行榜
    Route::post('up_user','cms.King/upUser');        //修改用户
    Route::post('add_user','cms.King/addUser');     //创建用户
    Route::delete('del_user', 'cms.King/delUser');  //删除用户
});


/**
 * 类型
 */
Route::group('tags',function (){
    Route::get('get_all','cms.tags/getSortAll');      //查询全部类型
    Route::post('add_tag','cms.tags/addTag');     //创建类型
    Route::post('up_tag','cms.tags/upTag');        //修改类型
    Route::delete('del_tag', 'cms.tags/delTag');  //删除类型
})->middleware('CheckCms');

/**
 *管理员
 */
Route::post('admin/login','cms.Admin/loginService');           //管理员登录
Route::group('admin',function (){
    Route::get('get_home','cms.Admin/getHome');  //获取首页数据
    Route::get('get_config','cms.Admin/getConfig');           //管理员登录
    Route::post('update_config','cms.Admin/upConfig');           //管理员登录
    Route::get('get_all','cms.Admin/getAll');           //查询全部管理员
    Route::post('add_admin','cms.Admin/addAdmin');     //创建管理员
    Route::post('up_admin','cms.Admin/upAdmin');        //修改管理员
    Route::delete('del_admin', 'cms.Admin/delAdmin');  //删除管理员
})->middleware('CheckCms');


//小程序端
Route::group("user",function (){
    //Route::delete('del_user_sql','user.Auth/delUser');  //删除用户
    Route::get('get_search_script','cms.Script/getTypeScript');         //筛选剧本
    Route::get('get_type_all','cms.tags/getSortAll');   //获取类型
    Route::get("xcx_login",'user.Auth/loginXcx'); //小程序登录
    Route::get("verify_token",'user.Auth/verifyToken'); //验证登录
    Route::post("xcx_update",'user.Auth/upInfo'); //小程序更新头像昵称
    Route::get("get_info",'user.Auth/getInfo'); //小程序获取个人信息
    Route::group("",function (){
        Route::get("get_hot_script",'user.Store/getHotScript');    //获取某个店铺下面的热门剧本
        Route::get("get_store_script",'user.Store/getScript'); //获取某个店铺下面的剧本
        Route::get("get_script",'user.Script/getScript'); //获取某个剧本`
        Route::get('get_ranking','cms.King/getAll'); //获取排行榜
    });
    Route::group("hort",function (){
        Route::put('add_star','user.User/addHort');   //添加收藏
        Route::get('get_star','user.User/getHort');   //查看收藏
        Route::delete('del_star','user.User/delHort');//删除收藏
    });
    Route::get('banner_all','cms.Banner/getAll');
    Route::get('get_store_all','user.Store/getAll')->middleware('CheckUser'); //查询所有店铺
});

/**
 * 微信
 */
Route::group('weixin',function () {
    Route::get('gzh_code','user.Auth/getCode');             //公众号获取code
    Route::get('get_gzh_token','user.Auth/getgzhToken');    //公众登录获取token
    Route::get('gzh_upinfo','user.Auth/gzhGrant');    //公众授权头像昵称
    Route::get('gzh_upinfos','user.Auth/gzhUpinfo');    //公众授权头像昵称

});

