(function() {
  var Run;
  angular.module('ritasoares', ['ngMessages', 'ngAnimate', 'ui.bootstrap', 'ui.router', 'uiGmapgoogle-maps']);
  Run = function($rootScope, $location) {
    return $rootScope.localTime = new Date();
  };
  Run.$inject = ['$rootScope', '$location'];
  return angular.module('ritasoares').run(Run);
})();
