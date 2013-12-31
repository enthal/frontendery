module.exports = App.IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo 'frauds'
