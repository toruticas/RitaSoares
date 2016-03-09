(->
  'use strict'

  Routes = ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise '/'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'views/home.html'
        controller: 'HomeCtrl'

      .state 'about',
        url: '/about'
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'

      .state 'gallery',
        url: '/gallery'
        templateUrl: 'views/gallery.html'
        controller: 'GalleryCtrl'

  Routes.$inject = ['$stateProvider', '$urlRouterProvider']

  angular
    .module('ritasoares')
    .config Routes

  return
)()
