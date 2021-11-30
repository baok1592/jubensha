<template>
	<view class="map">
		<map style="width: 100%; height: 300px;" :latitude="latitude" :longitude="longitude" :markers="covers">
		<view class="btReturn" @click="goto_return()"><u-icon name="arrow-leftward" color="#ffffff" size="30"></u-icon></view>
		</map>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id: 0, // 使用 marker点击事件 需要填写id
				title: 'map',
				latitude: 39.909,
				longitude: 116.39742,
				covers: [{
					latitude: 39.909,
					longitude: 116.39742,
				}]
			}
		},
		onLoad(option) {
			console.log("map:",option)
			this.latitude = option.lat
			this.longitude = option.long
			this.covers[0].latitude = option.lat
			this.covers[0].longitude = option.long
		},
		methods: {
			goto_return(){
				uni.navigateBack({
					
				})
			},
		}
	}
</script>

<style>
	.map{
		background-color: #171824;
		min-height: 100vh;
	}
	.btReturn {
		position: absolute;
		left: 10px;
		top: 10px;
		height: 35px;
		line-height: 35px;
		width: 35px;
		font-size: 18px;
		border-radius: 50%;
		text-align: center;
		opacity: 0.8;
		 background:rgba(78,87,104, 0.6);
	}
</style>
