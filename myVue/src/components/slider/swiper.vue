<template>
	<div id="slider">		
		<div class="window">  
			<ul class="imgul">
				<li>
				  	<img :src="sliders[sliders.length - 1].img" alt="" />
				</li>
				<li v-for="(item, index) in sliders" :key="index">
				  	<img :src="item.img" alt="" />
				</li>
				<li>
				  	<img :src="sliders[0].img" alt="" />
				</li>
			</ul>
			<ul class="direction">
				<li class="left">
					<svg class="icon" width="30px" height="30.00px" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"><path fill="#ffffff" d="M481.233 904c8.189 0 16.379-3.124 22.628-9.372 12.496-12.497 12.496-32.759 0-45.256L166.488 512l337.373-337.373c12.496-12.497 12.496-32.758 0-45.255-12.498-12.497-32.758-12.497-45.256 0l-360 360c-12.496 12.497-12.496 32.758 0 45.255l360 360c6.249 6.249 14.439 9.373 22.628 9.373z"  /></svg>          
				</li>
				<li class="right">
					<svg class="icon" width="30px" height="30.00px" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"><path fill="#ffffff" d="M557.179 904c-8.189 0-16.379-3.124-22.628-9.372-12.496-12.497-12.496-32.759 0-45.256L871.924 512 534.551 174.627c-12.496-12.497-12.496-32.758 0-45.255 12.498-12.497 32.758-12.497 45.256 0l360 360c12.496 12.497 12.496 32.758 0 45.255l-360 360c-6.249 6.249-14.439 9.373-22.628 9.373z"  /></svg>
				</li>
			</ul>
			<ul class="dots">
				<li v-for="(dot, i) in sliders" :key="i" 
				:class="{dotted: i === (currentIndex-1)}"
				>
				</li>
			</ul>
		</div>
	</div>
</template>
<style scoped>
	.window{
		width: 1290px;
		height: 500px;
		margin: 0 auto;
	}
	.imgul{
		width: 1290px;
		height: 500px;
		float: left;
	}
	.imgul li{
		width: 100%;
		height: 100%;
		margin-top: -70px;
	}
	.imgul img{
		width: 100%;
		height: 100%;
	}
</style>
<script>
	export default {
	  	name: 'slider',
	  	data () {
		    return {
		      	sliders:[
			        {
			          	img:require("@/assets/images/1.jpg")
			        },
			        {
			          	img:require("@/assets/images/2.jpg")
			        },
			        {
			          	img:require("@/assets/images/3.jpg")
			        },
			        {
			          	img:require("@/assets/images/4.jpg")
			        },
			        {
			          	img:require("@/assets/images/5.jpg")
			        }
		      	],
		      	currentIndex:1,
		      	distance:-600
		    }
	  	},
	  	computed:{
		    containerStyle() {  //这里用了计算属性，用transform来移动整个图片列表
		      	return {
		        	transform:`translate3d(${this.distance}px, 0, 0)`
		      	}
		    }
	  	}
	}
</script>
 