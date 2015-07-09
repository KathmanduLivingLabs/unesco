angular.module('UNESCOApp', [])
	.controller('mainCtrl', ['$scope', function($scope){
		$scope.tab = true;
		$scope.show = function(value) {
			$scope.tab = value;
		};

		$scope.kathmandu = true;
		$scope.lalitpur = false;
		$scope.bhaktapur = false;
		$scope.others = false;

		$scope.showKathmandu = function() {
			$scope.kathmandu = true;
			$scope.lalitpur = false;
			$scope.bhaktapur = false;
			$scope.others = false;
			console.log('In kathmandu ' + $scope.kathmandu);
		};

		$scope.showLalitpur = function() {
			$scope.kathmandu = false;
			$scope.lalitpur = true;
			$scope.bhaktapur = false;
			$scope.others = false;
			console.log('in lalitpur ' + $scope.lalitpur);
		};

		$scope.showBhaktapur = function() {
			$scope.kathmandu = false;
			$scope.lalitpur = false;
			$scope.bhaktapur = true;
			$scope.others = false;
		};

		$scope.showOthers = function() {
			$scope.kathmandu = false;
			$scope.lalitpur = false;
			$scope.bhaktapur = false;
			$scope.others = true;
		};
	}]);


