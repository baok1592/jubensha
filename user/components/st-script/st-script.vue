<template>
	<view class="size">
		<view class="bg-muent rounded d-flex"  @click="go_info(data.id)">
			<u-image v-if="data.img" :src="getimg + data.img.url" width="200rpx" height="180rpx" border-radius="15"></u-image>
			<view class="px-2">
				<view class="scTitle">{{data.title}}</view>
				<view class="mt-2 d-flex" style="padding-top: 10rpx;">
					<u-tag :text="item" class="me-2" bg-color="#2F353D" color="#66738A" border-color="#343434" size="mini" v-if="index<3" v-for="(item,index) in data.type" :key="index"/>
				</view>
				<view class="mt-2 d-flex">
					<view class="star">
						<u-rate active-color="#f29100" :count="count" v-model="data.score" disabled size="22"></u-rate>
						<view class="ps-2 pt-2" style="color:#ff9900;">
							{{data.score}}分
						</view>
					</view>

				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default{
		props:{
			data:''
		},
		data(){
			return {
				count: 5,
				value: 4,
				img:"http://localhost:8094//uploads/images/614ac73adc607.jpeg",
				getimg: this.$getimg
			}
		},
		onLoad(){
			
		},
		onShow() {
			this.show_data();
		},
		methods:{
			//全局mixin便于下拉刷新与分享
			show_data(){
				
			},
			go_info(){
				uni.navigateTo({
					url:'/pages/script/info/info?id=' + this.data.id
				})
			}
		}
	}
</script>

<style scoped>
	.size{
		margin-top: 5px;
		height: 200rpx;
		width: 700rpx;
		border-radius: 10px;
	}
	.star{
		display: flex;
		align-items:flex-end;
	}
	.scTitle{
		color: #f4f4f4;
		font-size: 15px;
	}
	.bg-muent{
		padding-top: 5px;
		background-color:  #1B2026;
		padding-bottom: 5px;
	}
</style>
