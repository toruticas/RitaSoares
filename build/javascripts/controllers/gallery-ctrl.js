(function() {
  var Gallery;
  Gallery = function($scope, $http) {
    var init;
    init = function() {
      $scope.images = [];
      $scope.loading = true;
      return $http({
        method: 'GET',
        url: 'https://s3.amazonaws.com/www.ritasoares.com.br/?prefix=media/gallery_thumb'
      }).then(function(response) {
        var i, key, len, parser, ref, xml;
        parser = new DOMParser();
        xml = parser.parseFromString(response.data, "text/xml");
        ref = xml.getElementsByTagName("Key");
        for (i = 0, len = ref.length; i < len; i++) {
          key = ref[i];
          $scope.images.push(key.childNodes[0].nodeValue.split("/")[2]);
        }
        return $scope.loading = false;
      });
    };
    init();
  };
  Gallery.$inject = ['$scope', '$http'];
  angular.module('ritasoares').controller('GalleryCtrl', Gallery);
})();
