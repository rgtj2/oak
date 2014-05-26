'use strict'

angular.module('oakApp')
  .controller 'Link2Ctrl', ($scope, $timeout) ->

    scene = document.getElementById('scene')
    parallax = new Parallax(scene)

    horn = new Howl {urls: ['images/audio/s1.wav'], loop: true, buffer: false}
    bell = new Howl {urls: ['images/audio/s2.wav'], loop:true, buffer: false}
    marimba = new Howl {urls: ['images/audio/s3.wav'], loop:true, buffer: false}
    harp = new Howl {urls: ['images/audio/s4.wav'], loop:true, buffer: false}

    $scope.sceneText =
      scene: 5
      line: 2
      sequence: 1

    $scope.scene =
      show1: true
      show2: false
      show3: false
      show4: false
      next: false

    actions = ->
      t = $scope.sceneText
      $scope.scene.show1 = if t.scene == 5 and t.line == 2 then true else false
      $scope.scene.show2 = if t.scene == 5 and t.line == 3 then true else false
      $scope.scene.show3 = if t.scene == 5 and t.line == 4 then true else false
      $scope.scene.show4 = if t.scene == 5 and t.line == 5 then true else false
      $scope.scene.next = if t.scene == 6 then true else false  
    $scope.$watch 'sceneText', actions, true


    sounds = ->
      if $scope.scene.show1 then horn.play()
      if $scope.scene.show2 then bell.play()
      if $scope.scene.show3 then marimba.play()
      if $scope.scene.show4 then harp.play()
    $scope.$watch 'scene', sounds, true