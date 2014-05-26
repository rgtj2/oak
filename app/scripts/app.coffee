'use strict'

angular.module('oakApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'ngAnimate'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/link1',
        templateUrl: 'views/link1.html'
        controller: 'Link1Ctrl'
      .when '/link2',
        templateUrl: 'views/link2.html'
        controller: 'Link2Ctrl' 
      .when '/link3',
        templateUrl: 'views/link3.html'
        controller: 'Link3Ctrl'
      .when '/link4',
        templateUrl: 'views/link4.html'
        controller: 'Link4Ctrl'         
      .otherwise
        redirectTo: '/'