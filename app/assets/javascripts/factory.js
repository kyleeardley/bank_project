(function () {
  angular.module('Loaner').factory('Loan', ['$resource', function($resource) {
  	return $resource('/loans/:id', { id: '@id' }, {
    	update: { method: 'PATCH' }
  	});
  
  }]);
})();


