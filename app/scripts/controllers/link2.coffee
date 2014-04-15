'use strict'

angular.module('oakApp')
  .controller 'Link2Ctrl', ($scope) ->

    scene = document.getElementById('scene')
    parallax = new Parallax(scene)
