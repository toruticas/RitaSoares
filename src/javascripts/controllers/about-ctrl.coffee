(->

  About =  ($scope) ->

    init = ->
      $scope.map =
        center:
          latitude: -21.188579538637
          longitude: -47.755151689053
        zoom: 16
      $scope.marker =
        id: 0
        coords:
          latitude: -21.188579538637
          longitude: -47.755151689053

    init()

    return

  About.$inject = ['$scope']

  angular
    .module('ritasoares')
    .controller 'AboutCtrl', About

  return
)()
