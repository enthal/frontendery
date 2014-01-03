'use strict'

# jasmine specs for controllers go here

# TODO figure out how to test Controllers that use modules
describe "controllers", ->

  beforeEach(module "app.controllers")

  it "tests", ->
    expect(1).toBe 1
