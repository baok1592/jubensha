import http from '../common/http/axios.js'
import httpApi from '../common/httpApi.js'

// 获取全部店铺
const getSystemStore = function(type) {
	return http.get(httpApi.home.store).then(res => {
		return res;
	})
}



export default {
	getSystemStore
}