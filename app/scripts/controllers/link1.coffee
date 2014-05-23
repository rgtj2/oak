'use strict'

angular.module('oakApp')
  .controller 'Link1Ctrl', ($scope, Text) ->

    text = Text.get()
    $scope.grouped = _(text).groupBy 'scene'
    console.log $scope.grouped
    $scope.hide3 = false
    $scope.hide2 = false

    $scope.current =
      scene: 1
      line: 1
      sequence: 1

    $scope.next = 
      scene: 2
      line: 1
      sequence: 1

    $scope.other =
      scene: 5
      line: 3
      sequence: 1

    $scope.only3 =
      scene: 3
      line: 1
      sequence: 1

    action = ->
      c = $scope.current
      $scope.show1 = if c.scene == 1 then true else false
      $scope.show1a = if c.scene == 1 and c.line == 3 and c.sequence == 1 then true else false
      $scope.show1b = if c.scene == 1 and c.line == 2 then true else false
      $scope.show2 = if c.scene == 2 then true else false
    
    action2 = ->
      $scope.hide2 = if $scope.only3.scene == 4 then true else false

    action3 = ->
      $scope.hide3 = if $scope.other.scene == 6 then true else false
    
    $scope.$watch 'current', action, true
    $scope.$watch 'only3', action2, true
    $scope.$watch 'other', action3, true