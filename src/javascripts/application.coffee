(->

  angular.module 'ritasoares', [
    'ngMessages'
    'ngAnimate'
    'ui.bootstrap'
    'ui.router'
    'uiGmapgoogle-maps'
  ]

  Run = ($rootScope, $location) ->
    $rootScope.localTime = new Date()

  Run.$inject = ['$rootScope', '$location']

  angular
    .module('ritasoares')
    .run Run

)()
