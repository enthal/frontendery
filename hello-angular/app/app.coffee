
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

  $routeProvider
    .when('/todo', {templateUrl: '/partials/todo.html'})
    .otherwise({redirectTo: '/todo'})

  $locationProvider.html5Mode(true)  # Without server side support html5 must be disabled.
])
