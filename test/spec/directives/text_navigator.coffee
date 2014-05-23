'use strict'

describe 'Directive: textNavigator', () ->

  # load the directive's module
  beforeEach module 'oakApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<text-navigator></text-navigator>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the textNavigator directive'
