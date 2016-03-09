(function() {
  var About;
  About = function($scope) {
    var init;
    init = function() {
      $scope.map = {
        center: {
          latitude: -21.188579538637,
          longitude: -47.755151689053
        },
        zoom: 16
      };
      return $scope.marker = {
        id: 0,
        coords: {
          latitude: -21.188579538637,
          longitude: -47.755151689053
        }
      };
    };
    init();
  };
  About.$inject = ['$scope'];
  angular.module('ritasoares').controller('AboutCtrl', About);
})();
