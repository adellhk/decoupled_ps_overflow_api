angular.module('AngularRails')
.service('Question',function($scope){
  return {
    all: function(){
      $http.get('/api/questions')
    }
  }
})
