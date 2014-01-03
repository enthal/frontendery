
angular.module('app.controllers', [])

.controller('Issues', [
  '$scope'
  '$http'
($scope, $http) ->
  $http.get('/api/v1/issues.json')
    .success (issues) ->
      $scope.issues = issues

  $scope.remove = (issue) ->
    $scope.issues.splice $scope.issues.indexOf(issue), 1   # assume indexOf found
])
