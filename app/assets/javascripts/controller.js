(function () {
  angular.module('Loaner').controller('LoansController', ['$scope', 'Loan', function($scope, Loan) {
  $scope.loans = Loan.query();
  loan_id = $routeParams.loan_id;
  //$scope.loan = Loan.show({loan_id: loan_id});


  /*$scope.addTask = function(task) {
    if (task.title && task.title.length > 0) {
      task.$save(function(r) {
        $scope.tasks.push(task);
        $scope.task = new Task();
      });
    }
  }

  $scope.updateTask = function(task) {
    task.$update();
  }

  $scope.deleteTask = function(task, index) {
    task.$delete(function() {
      $scope.tasks.splice(index, 1);
    });
  }*/
  }]);
})();