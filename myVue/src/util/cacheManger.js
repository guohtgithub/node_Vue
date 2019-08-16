const users = 'userKey';
function setTelPhone(value){
	sessionStorage.setItem(users,value)
}
function getTelPhone(){
	return sessionStorage.getItem(users)
}
export {setTelPhone,getTelPhone}