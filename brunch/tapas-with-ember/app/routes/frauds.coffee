module.exports = App.FraudsRoute = Ember.Route.extend
  model: ->
    $.getJSON '/api/v1/frauds.json'
