<?php
// 应用公共文件
/**
 * 管理员密码加密方式
 * @param $password  密码
 * @param $password_code 密码额外加密字符
 * @return string
 */
function password($password)
{
    $password_code=config('setting.psw_code');
    return md5(md5($password) . md5($password_code));
}
