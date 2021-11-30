
const siteinfo=require('../siteinfo.js');

const CONFIG = {
    // 开发环境配置
    development: {
		 Api_url : 'http://card.ruhuashop.com/'
		 // Api_url : 'http://192.168.0.228:8093/'  
        // Api_url : '/../'
    },
    // 生产环境配置
    production: {
        Api_url:"/../"
    }
	

};
let Api_url=CONFIG[process.env.NODE_ENV]
 const IsDemo = false
 const is_w7_xcx = false
 const is_w7_h5 = false
 if(is_w7_h5){
 	 Api_url='../index.php/'
 }
 if(is_w7_xcx){
 	 Api_url=siteinfo.siteroot +"/../../../addons/qy_wmdcs/tp6/public/index.php/";
 }
  
export {Api_url,IsDemo,is_w7_xcx,is_w7_h5}
