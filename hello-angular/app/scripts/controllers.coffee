
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
($scope) ->
  $scope.issues = [
    title: 'your mom'
  ,
    title: 'your dad'
  ]
])
