"use strict"

# http://docs.angularjs.org/guide/dev_guide.e2e-testing
describe "my app", ->
  beforeEach ->
    browser().navigateTo "/"

  it "automatically redirects to /todo when location hash/fragment is empty", ->
    expect(browser().location().url()).toBe "/todo"

  describe "todo", ->

