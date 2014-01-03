
angular.module('app.controllers', [])

.controller('Application', [
  '$scope'
  '$location'
  '$resource'
  '$rootScope'
($scope, $location, $resource, $rootScope) ->
])

.controller('Issues', [
  '$scope'
  '$http'
($scope, $http) ->
  $http.get('/api/v1/issues.json')
    .success (issues) ->
      $scope.issues = issues
])
