'use strict'

angular.module('oakApp')
  .controller 'Link2Ctrl', ($scope, $timeout) ->

    scene = document.getElementById('scene')
    parallax = new Parallax(scene)


    $scope.log = (stuffz) ->
      console.log stuffz

    showStuff = ->
      console.log 'showStuff'
      $scope.toggle2 = false
      $scope.toggle1 = false
      $scope.toggle3 = false
      $scope.doStuff()    

    hideStuff = ->
      console.log 'hideStuff'
      $scope.toggle2 = true
      $scope.toggle1 = true
      $scope.toggle3 = true
      $timeout showStuff, 2000 

    $scope.doStuff = ->
      console.log 'dostuff'
      $timeout hideStuff, 3000
