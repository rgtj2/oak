'use strict'

describe 'Service: Text', () ->

  # load the service's module
  beforeEach module 'oakApp'

  # instantiate service
  Text = {}
  beforeEach inject (_Text_) ->
    Text = _Text_

  it 'should do something', () ->
    expect(!!Text).toBe true
