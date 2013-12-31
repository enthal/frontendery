module.exports = App.FraudRoute = Ember.Route.extend
  model: (params) ->
    $.getJSON('/api/v1/frauds.json').then (frauds)->
      frauds.find (x) -> x.id is +params.fraud_id
