<template>
	<div class="register">
		<div class="container">
			<div class="content">
				<div class="logo">
					<img src="../assets/images/home.jpg" alt="" />
				</div>
				<div class="login-form">
					<div class="form">
						<div class="title-msg">
							<h1>Register for Web</h1>
						</div>
						<div class="login-body">
							<label for="username">Username、Email or TellPhone</label>
							<input type="text" id="username" v-model="username" class="form-input">
							<label for="password">Password</label>
							<input type="text" id="password" v-model="password" class="form-input">
							<label for="password2">ConFirm Password</label>
							<input type="text" id="password2" v-model="password2" class="form-input">
							<input type="button" @click='register' class="btn-primary btn" value='Register'>
						</div>
						<div class="create-account tl fontcolor" v-if='showFlag'>
							Please confirm whether the complete or Password is the same.
						</div>
					</div>
					<p class="create-account tl">
						Registered account means that you agree and are willing to abide by the website <span>&nbsp;user agreement&nbsp;</span>and<span>&nbsp;privacy policy.&nbsp;</span>
					</p>
				</div>
			</div>
		</div>
	</div>
</template>
<script>
	import '../assets/css/login.css'
	import qs from 'qs'


	export default{
		name:'register',
		data(){
			return {
				username:'',
				password:'',
				password2:'',
				showFlag:false
			}
		},
		methods:{
			clearData(){
				let self = this;
				self.username = '';
				self.password = '';
			},
			register(){
				let self = this;
				if(self.password && self.password2 && self.username && 
					self.password2 === self.password){
					self.axios.post('http://localhost:3000/register',qs.stringify({
						username:self.username,
						password:self.password
					})).then(function(res){
						window.location.href = '/';
						console.log(res,'res')
					}).catch(function(err){
						console.log(err,'err');
					})
				}else{
					self.showFlag = true;
					setTimeout(function(){
						self.showFlag = false;
					},1000);
				}
			}
		}
	}
</script>