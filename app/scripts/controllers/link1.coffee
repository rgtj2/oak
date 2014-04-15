'use strict'

angular.module('oakApp')
  .controller 'Link1Ctrl', ($scope) ->

    $scope.ding = new Howl {urls: ['images/audio/ding.mp3']}
    $scope.blip = new Howl {urls: ['images/audio/blip.mp3']}
    $scope.play = (sound) ->
      sound.play()