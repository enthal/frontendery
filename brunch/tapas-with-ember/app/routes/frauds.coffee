module.exports = App.FraudsRoute = Ember.Route.extend
  model: ->
    $.getJSON '/api/v1/frauds.json'
  # [
  #   {id:1, title: 'fraud1',}
  #   {id:2, title: 'fraud2',}
  #   {id:3, title: 'fraud3',}
  # ]
