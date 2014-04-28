'use strict'

angular.module('oakApp')
  .controller 'Link3Ctrl', ($scope, $timeout, $q) ->

    scene = document.getElementById('scene')
    parallax = new Parallax(scene)
