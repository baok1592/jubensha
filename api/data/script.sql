-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-11-19 03:40:38
-- 服务器版本： 10.1.38-MariaDB
-- PHP 版本： 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `script_kill`
--

-- --------------------------------------------------------

--
-- 表的结构 `rh_admin`
--

CREATE TABLE `rh_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  `login_time` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `ucid` int(11) DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- --------------------------------------------------------

--
-- 表的结构 `rh_banner`
--

CREATE TABLE `rh_banner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img_id` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL COMMENT '店铺id',
  `ucid` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';



-- --------------------------------------------------------

--
-- 表的结构 `rh_image`
--

CREATE TABLE `rh_image` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `updata_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `ucid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='图片';


--
-- 表的结构 `rh_king`
--

CREATE TABLE `rh_king` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `img_id` varchar(255) DEFAULT NULL COMMENT '头像',
  `num` int(11) DEFAULT NULL COMMENT '次数',
  `store_id` int(11) DEFAULT NULL COMMENT '店铺id',
  `ucid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排行表';

-- --------------------------------------------------------

--
-- 表的结构 `rh_people`
--

CREATE TABLE `rh_people` (
  `id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL COMMENT '剧本id',
  `img_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `ucid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='人物';



--
-- 表的结构 `rh_script`
--

CREATE TABLE `rh_script` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img_id` int(11) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `time` int(11) DEFAULT NULL COMMENT '预计时长',
  `type` text COMMENT '剧本类型',
  `create_time` int(11) DEFAULT NULL,
  `updata_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL COMMENT '店铺id',
  `score` int(11) DEFAULT NULL COMMENT '评分',
  `hot` int(11) DEFAULT '0',
  `ucid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='剧本';


--
-- 表的结构 `rh_script_hort`
--

CREATE TABLE `rh_script_hort` (
  `id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL COMMENT '剧本',
  `u_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `ucid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='剧本类型多对多表';

-- --------------------------------------------------------

--
-- 表的结构 `rh_store`
--

CREATE TABLE `rh_store` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `s_id` varchar(255) DEFAULT NULL COMMENT '剧本id',
  `create_time` int(11) DEFAULT NULL,
  `updata_time` int(11) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL COMMENT '电话',
  `lat` decimal(12,6) DEFAULT NULL COMMENT '纬度',
  `long` decimal(12,6) DEFAULT NULL COMMENT '经度',
  `start_time` varchar(11) DEFAULT NULL COMMENT '营业开始时间',
  `end_time` varchar(11) DEFAULT NULL COMMENT '营业结束时间',
  `ucid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='店铺';



--
-- 表的结构 `rh_sys_config`
--

CREATE TABLE `rh_sys_config` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text,
  `desc` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1基础2微信3支付宝4短信5物流6上传配置',
  `switch` int(11) NOT NULL DEFAULT '0' COMMENT '0填写框1开关2单选3多选',
  `other` varchar(255) DEFAULT NULL,
  `delete_time` int(11) NOT NULL DEFAULT '0',
  `ucid` int(11) DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `rh_sys_config`
--

INSERT INTO `rh_sys_config` (`id`, `key`, `value`, `desc`, `type`, `switch`, `other`, `delete_time`, `ucid`) VALUES
(1, 'api_url', 'https://edu.ruhuashop.com/', '入口位置', 1, 0, NULL, 0, 3),
(2, 'gzh_appid', '', '公众号appid', 2, 0, NULL, 0, 3),
(3, 'gzh_secret', '', '公众号秘钥', 2, 0, NULL, 0, 3),
(5, 'wx_app_id', '', '小程序appid', 2, 0, NULL, 0, 3),
(6, 'wx_app_secret', '', '小程序秘钥', 2, 0, NULL, 0, 3),
(7, 'pay_num', '', '商户id', 2, 0, NULL, 0, 3),
(8, 'pay_key', '', '商户key', 2, 0, NULL, 0, 3),
(9, 'wx_token_expire', '72000', 'token有效期', 1, 0, NULL, 0, 3)
;

-- --------------------------------------------------------

--
-- 表的结构 `rh_tags`
--

CREATE TABLE `rh_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` text,
  `p_id` int(11) DEFAULT '0' COMMENT '父类id',
  `is_visible` int(11) DEFAULT '1' COMMENT '1显示 0隐藏',
  `ucid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='剧本分类';



--
-- 表的结构 `rh_user`
--

CREATE TABLE `rh_user` (
  `id` int(11) NOT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `session_key` varchar(255) DEFAULT NULL COMMENT '会话密匙',
  `name` varchar(255) DEFAULT NULL,
  `headpic` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT '0' COMMENT '次数',
  `create_time` int(11) DEFAULT NULL,
  `updata_time` int(1) DEFAULT NULL,
  `openid_gzh` varchar(255) DEFAULT NULL,
  `ucid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信用户';


--
-- 转储表的索引
--

--
-- 表的索引 `rh_admin`
--
ALTER TABLE `rh_admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_banner`
--
ALTER TABLE `rh_banner`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_image`
--
ALTER TABLE `rh_image`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_king`
--
ALTER TABLE `rh_king`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_people`
--
ALTER TABLE `rh_people`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_script`
--
ALTER TABLE `rh_script`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_script_hort`
--
ALTER TABLE `rh_script_hort`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_store`
--
ALTER TABLE `rh_store`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_sys_config`
--
ALTER TABLE `rh_sys_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `rh_tags`
--
ALTER TABLE `rh_tags`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rh_user`
--
ALTER TABLE `rh_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `rh_admin`
--
ALTER TABLE `rh_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `rh_banner`
--
ALTER TABLE `rh_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `rh_image`
--
ALTER TABLE `rh_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `rh_king`
--
ALTER TABLE `rh_king`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `rh_people`
--
ALTER TABLE `rh_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- 使用表AUTO_INCREMENT `rh_script`
--
ALTER TABLE `rh_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用表AUTO_INCREMENT `rh_script_hort`
--
ALTER TABLE `rh_script_hort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `rh_store`
--
ALTER TABLE `rh_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `rh_sys_config`
--
ALTER TABLE `rh_sys_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- 使用表AUTO_INCREMENT `rh_tags`
--
ALTER TABLE `rh_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `rh_user`
--
ALTER TABLE `rh_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
