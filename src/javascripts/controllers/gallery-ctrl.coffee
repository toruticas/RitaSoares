(->

  Gallery =  ($scope, $http) ->

    init = ->
      $scope.images = []
      $scope.loading = true
      $http
        method: 'GET'
        url: 'https://s3.amazonaws.com/www.ritasoares.com.br/?prefix=media/gallery_thumb'
      .then (response) ->
        parser = new DOMParser();
        xml = parser.parseFromString(response.data,"text/xml")
        for key in xml.getElementsByTagName("Key")
          $scope.images.push key.childNodes[0].nodeValue.split("/")[2]
        $scope.loading = false

    init()

    return

  Gallery.$inject = ['$scope', '$http']

  angular
    .module('ritasoares')
    .controller 'GalleryCtrl', Gallery

  return
)()
