import {hex_md5,b64_md5} from './md5';
import axios from 'axios';
import qs from 'qs';

axios.defaults.timeout = 5000;
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=UTF-8'
axios.defaults.baseURL = 'http://localhsot:3000';

var appSecret = '!Q@W#E$R';

// post 传参序列化
axios.interceptors.request.use((config)=>{
	if(config.method === 'post'){
		config.data = qs.stringify(config.data);
	}
	return config;
},(error)=>{
	return Promise.reject(error);
});

// 返回状态判断
axios.interceptors.response.use((res)=>{
	if(!res.data.success){
		return Promise.reject(res);
	}
	return res;
},(error)=>{
	return Promise.reject(error);
});

// 返回一个Promise（发送post请求）
export function fetchPost(url,params){
	console.log(33);
	return new Promise((resolve,reject)=>{
		axios.post(url,params).then(response=>{
			console.log(44);
			resolve(response.data);
		},err=>{
			console.log(66);
			reject(err);
		}).catch((error)=>{
			console.log(77);
			reject(error);
		})
	})
}

// 返回一个Promise（发送get请求）
export function fetchGet(url,param){
	return new Promise((resolve,reject)=>{
		axios.get(url,{params:param}).then(response=>{
			resolve(response.data);
		},err=>{
			reject(err)
		}).catch((error)=>{
			reject(error)
		})
	})
}

export default {
	/*获取头部nav-list
	*/
	getNavList(){
		return fetchPost('/navlist',null);
	}
}