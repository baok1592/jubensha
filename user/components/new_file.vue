<template>
	<view>
		 <button @click="find">发送</button>
	</view>
</template>

<script>
	export default{
		data(){
			return {
				mes:"这是a组件穿过来得消息"
			}
		},
		onLoad(e){
			
		},
		onShow() {
			this.show_data();
		},
		methods:{
			//全局mixin便于下拉刷新与分享
			show_data(){
				
			},
			find(){
				const  that =this;
				that.$eventHub.$emit("coma",that.mes)
			}
		}
	}
</script>

<style>
	
</style>
