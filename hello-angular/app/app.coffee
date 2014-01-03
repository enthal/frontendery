
App = angular.module('app', [
  'ngCookies'
  'ngResource'
  'ngRoute'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'partials'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $locationProvider.html5Mode(true)  # Without server side support html5 must be disabled.

  $routeProvider
    .when('/issues',          {templateUrl: '/partials/issues.html'})
    .when('/issues/:issueId', {templateUrl: '/partials/issue.html'})
    .otherwise({redirectTo: '/issues'})
])
