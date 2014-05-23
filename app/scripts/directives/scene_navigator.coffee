'use strict'

angular.module('oakApp')
  .directive('sceneNavigator', () ->
    template: '<div id="scene-navigator" ng-hide="over" ng-click="nextText()"> <div><h3>{{text.text}}</h3></div></div>'
    restrict: 'E'
    scope:
      sceneId: '='
      sequenceId: '='
      lineId: '='
    controller: ($scope, $q, Text) ->

      text = Text.get()

      navigate = ->
        $scope.text = _(text).findWhere 
          scene: $scope.sceneId
          line: $scope.lineId
          sequence: $scope.sequenceId
      
      navigate()
      
      $scope.nextText = ->
        $scope.sequenceId += 1
        $q.when(navigate()).then ->
          if !$scope.text?
            $scope.sequenceId = 1
            $scope.lineId += 1
            $q.when(navigate()).then ->
              if !$scope.text?
                $scope.sequenceId = 1
                $scope.lineId = 1
                $scope.sceneId += 1
                $q.when(navigate()).then ->
                  if !$scope.text?
                    $scope.text = {text: 'GAME OVER!! YOU LOSE'}
  )

