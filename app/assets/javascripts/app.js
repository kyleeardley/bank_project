(function () {
  angular.module('Loaner', ['ngResource']).config([
    '$httpProvider', function($httpProvider) {
      $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
      $httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
    }
  ]);

  $(document).on('page:load', function() {
    angular.bootstrap(document.body, ['Loaner']);
  });
})();






/*app.directive('taskProgress', function() {
  return {
    templateUrl: 'task-progress.html',
    link: function($scope) {
      $scope.$watch('tasks', function(newValue, oldValue) {
        updateProgress();
      }, true);
      function updateProgress() {
        var completed = 0;
        angular.forEach($scope.tasks, function(task) {
          if (task.completed)
            completed += 1;
        });
        $scope.completed = completed;
      }
    }
  }
});*/