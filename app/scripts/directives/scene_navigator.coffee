'use strict'

angular.module('oakApp')
  .directive('sceneNavigator', () ->
    template: '<div class="scene-navigator" ng-hide="over" ng-click="nextText()"> <div><h3>{{text.text}}</h3></div></div>'
    restrict: 'E'
    scope:
      location: '='
    controller: ($scope, $q, Text) ->

      text = Text.get()

      navigate = ->
        $scope.text = _(text).findWhere 
          scene: $scope.location.scene
          line: $scope.location.line
          sequence: $scope.location.sequence
      navigate()
      
      $scope.nextText = ->
        $scope.location.sequence += 1
        $q.when(navigate()).then ->
          if !$scope.text?
            $scope.location.sequence = 1
            $scope.location.line += 1
            $q.when(navigate()).then ->
              if !$scope.text?
                $scope.location.sequence = 1
                $scope.location.line = 1
                $scope.location.scene += 1
                $q.when(navigate()).then ->
                  if !$scope.text?
                    $scope.text = {text: 'GAME OVER!! YOU LOSE'}
  )

