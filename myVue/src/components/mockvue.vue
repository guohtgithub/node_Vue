<template>
  <div class="hello">
    <p>HELLO WORLD</p>
    <ul>
    	<li v-for="(item,index) in datalist" :key='index'>
    		<h1>{{item.personName}}:<span>{{item.viewName}}</span></h1>
    	</li>
    </ul>
  </div>
</template>
<!--mockjs应用页面-->
<script>
export default {
  name: 'mockvue',
  data () {
    return {
      datalist:[]
    }
  },
  mounted(){
  	this.showdata()
  },
  methods:{
  	showdata(){
  		this.axios.post('/userData') 
  		.then((res)=>{
  			console.log(res.data.data)
  			this.datalist = res.data.data
  		})
  		.catch((err)=>{
  			console.log('调用失败',err)
  		})
  	}
  }
}
</script>