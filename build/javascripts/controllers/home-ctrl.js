(function() {
  var Home;
  Home = function($scope) {
    var init;
    init = function() {
      $scope.map = {
        center: {
          latitude: -21.188579538637,
          longitude: -47.755151689053
        },
        zoom: 16
      };
      $scope.marker = {
        id: 0,
        coords: {
          latitude: -21.188579538637,
          longitude: -47.755151689053
        }
      };
      $scope.slides = ['/media/bg1.jpg', '/media/bg2.jpg', '/media/bg3.jpg', '/media/bg3.jpg'];
    };
    init();
  };
  Home.$inject = ['$scope'];
  angular.module('ritasoares').controller('HomeCtrl', Home);
})();
