(->

  Modal =  ($scope, $uibModalInstance, items) ->
    $scope.items = items

    $scope.ok = ->
      $uibModalInstance.close $scope.items[0]

    $scope.cancel = ->
      $uibModalInstance.dismiss 'cancel'

  Modal.$inject = ['$scope', '$uibModalInstance', 'items']

  angular
    .module('ritasoares')
    .controller 'ModalInstanceCtrl', Modal
)()
