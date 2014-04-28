'use strict'

angular.module('oakApp')
  .controller 'Link4Ctrl', ($scope, $timeout, $q) ->

    $scope.horn = new Howl {urls: ['images/audio/s1.wav'], loop: true}
    $scope.bell = new Howl {urls: ['images/audio/s2.wav'], loop:true}
    $scope.marimba = new Howl {urls: ['images/audio/s3.wav'], loop:true}
    $scope.harp = new Howl {urls: ['images/audio/s4.wav'], loop:true}


    $scope.stopAudio = ->
      console.log 'stop'
      $scope.horn.fade(1.0, 0.0, 1000)
      $scope.bell.fade(1.0, 0.0, 1000)
      $scope.marimba.fade(1.0, 0.0, 1000)
      $scope.harp.fade(1.0, 0.0, 1000)

    showTwo = ->
      console.log 'aahh'
      $scope.show2 = true
      $scope.bell.play()
      $timeout showThree, 2000
    showThree = ->
      console.log 'aahh1'      
      $scope.show3 = true
      $scope.marimba.play()
      $timeout showFour, 2000
    showFour = ->
      console.log 'aahh2'
      $scope.harp.play()      
      $scope.show4 = true

    showOne = ->
      $timeout showTwo, 2000
    showOne()
    $scope.horn.play()
