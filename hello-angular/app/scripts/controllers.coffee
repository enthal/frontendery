
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

.controller('Issue', [
  '$scope'
  '$http'
  '$routeParams'
($scope, $http, $routeParams) ->
  console.log $routeParams
  $http.get('/api/v1/issues.json')
    .success (issues) ->
      $scope.issue = (i for i in issues when i.id is +$routeParams.issueId)[0]
      # TODO act sad on none such?  or allow undefined in template?
])
