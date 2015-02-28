var app = angular.module('AngularRails', ['ngRoute'])

app.controller('HomeCtrl', function($scope, $http){

function getQuestions() {
    $http.get('/api/questions').success(function(res, data){
      console.log(res);
      console.log(data);
      $scope.questions = res.data;
    });
};
