
angular.module('app.controllers', [])

.controller('Issues', [
  '$scope'
  '$http'
($scope, $http) ->
  $http.get('/api/v1/issues.json')
    .success (issues) ->
      $scope.issues = issues
])
