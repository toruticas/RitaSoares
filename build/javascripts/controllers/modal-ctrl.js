(function() {
  var Modal;
  Modal = function($scope, $uibModalInstance, items) {
    $scope.items = items;
    $scope.ok = function() {
      return $uibModalInstance.close($scope.items[0]);
    };
    return $scope.cancel = function() {
      return $uibModalInstance.dismiss('cancel');
    };
  };
  Modal.$inject = ['$scope', '$uibModalInstance', 'items'];
  return angular.module('ritasoares').controller('ModalInstanceCtrl', Modal);
})();
