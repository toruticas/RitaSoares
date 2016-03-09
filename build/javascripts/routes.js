(function() {
  'use strict';
  var Routes;
  Routes = function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
    return $stateProvider.state('home', {
      url: '/',
      templateUrl: 'views/home.html',
      controller: 'HomeCtrl'
    }).state('about', {
      url: '/about',
      templateUrl: 'views/about.html',
      controller: 'AboutCtrl'
    }).state('gallery', {
      url: '/gallery',
      templateUrl: 'views/gallery.html',
      controller: 'GalleryCtrl'
    });
  };
  Routes.$inject = ['$stateProvider', '$urlRouterProvider'];
  angular.module('ritasoares').config(Routes);
})();
