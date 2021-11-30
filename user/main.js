import Vue from 'vue'
import App from './App'

import httpApi from './common/httpApi'		//API接口配置文件
import HttpCache from './common/cache'
import $mConfig from '@/common/config.js';
import $mHelper from '@/utils/helper';		
import utils from "./utils/index.js";		//简化uniapp函数
import zIndex from "./utils/zIndex";		//规范z-index
import heImage from "./components/he-image.vue";	//封装style合并统一图片格式
import http from './common/http/axios.js'
import * as filters from 'common/filters/filters.js'
import {Api_url} from './common/config'

//引入小程序分享功能
let mpShare = require('uview-ui/libs/mixin/mpShare.js');
Vue.mixin(mpShare)

//引入组件库
import uView from "uview-ui";
Vue.use(uView);

Vue.prototype.$getimg = Api_url.Api_url

// 全局组件
import qyLoading from 'components/global/qy-loading.vue'
Vue.component('qy-loading',qyLoading);

// uView-vuex		不知道是什么，微信小程序运行会出错，先屏蔽
// let vuexStore = require('./common/store/$u.mixin.js')
// Vue.mixin(vuexStore)

//全局过滤器
console.log("filter",filters)
Object.keys(filters).forEach(key =>{
	Vue.filter(key,filters[key])
})

//全局mixin
import shoproShare from '@/common/mixins/shopro-share'
Vue.mixin(shoproShare);


Vue.config.productionTip = false
Vue.prototype.$http = http;
Vue.prototype.$eventHub = Vue.prototype.$eventHub || new Vue()
Vue.prototype.$api = httpApi;
Vue.prototype.$SysCache = HttpCache;
Vue.prototype.$mConfig =$mConfig;
Vue.prototype.$mHelper = $mHelper;

App.mpType = 'app'

const app = new Vue({
    ...App
})
app.$mount()
