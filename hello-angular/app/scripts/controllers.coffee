
withIssues = null

angular.module('app.controllers', [])

.controller('Issues', [
  '$scope'
  '$http'
  '$q'
($scope, $http, $q) ->
  withIssues($http, $q).then (issues) ->
    $scope.issues = issues

  $scope.remove = (issue) ->
    $scope.issues.splice $scope.issues.indexOf(issue), 1   # assume indexOf found
])

.controller('Issue', [
  '$scope'
  '$routeParams'
  '$http'
  '$q'
($scope, $routeParams, $http, $q) ->
  console.log $routeParams
  withIssues($http, $q).then (issues) ->
    $scope.issue = (i for i in issues when i.id is +$routeParams.issueId)[0]

  $scope.addIp = ->
    $scope.ips ?= []
    $scope.ips.push ip:'some ip'

  count = 0
  $scope.addSig = (ip) ->
    ip.sigs ?= []
    for [1..10]
      ip.sigs.push
        id:count++
        first_name: 'joe'
        last_name: 'blo'
])

do ->
  issuesCache = null
  withIssues = ($http, $q) ->
    deferred = $q.defer()

    if issuesCache?
      console.log 'use issuesCache'
      deferred.resolve issuesCache
    else
      # TODO: what if a request is already outstanding? could chain to its promise....
      console.log 'fetch...'
      $http.get('/api/v1/issues.json')
        .success (issues) ->
          console.log 'got!'
          issuesCache = issues
          deferred.resolve issuesCache

    deferred.promise
