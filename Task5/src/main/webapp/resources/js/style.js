var App=angular.module("myAPP",[]);
App.controller('myCtrl',function($scope,$http){

    $scope.Uname="";

    $scope.Upwd="";

    $scope.red="";

$scope.getValue=function(){

$http({

method: 'POST',

url: '/login',

params:{
    name:$scope.Uname,
    pwd:$scope.Upwd
},
// "name="+ $scope.Uname+"&pwd="+$scope.Upwd,

headers: { 'Content-Type': 'application/x-www-form-urlencoded' }

})/*.then(function (response){

//var obj=response.params;

    if (response.data.message=="success") {
    location.href="http://localhost/JS-6/HTML/welcome.html#!/Home"
    }

    else{

    $scope.red=response.params.message;
}

/!*  function errorCallback(response) {

            $scope.red=response.data.message;

             请求失败执行代码

        }*!/

})*/

}

})