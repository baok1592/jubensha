/**
 * API接口配置文件
 */
module.exports = {
	home : {
		banner:"user/banner_all", // 首页banner 
		store:"user/get_store_all", // 首页店铺
		hotScript:"user/get_hot_script", //首页热门
	},
	common:{
		couponlist:"index/couponlist", // 公共加载商品
		config:"config/getinfo", // 获取服务端配置
		update:"config/update", // 检测更新 
	},
	user:{
		select:"user/hort/get_star", // 商品详情 加载 
		getInfo:"user/get_info",     //获取小程序登录信息 
	},
	script:{
		allScript:"user/get_store_script", // 获取某个店铺的所有剧本
		allType:"user/get_type_all",       // 获取所有类型
		selectScript:"user/get_search_script" //筛选
	},
	info:{
		script:"user/get_script"     ,// 查找某个剧本
		collect:"user/hort/add_star" ,// 收藏
		cancelCol:"user/hort/del_star" //取消收藏
	}
}

 