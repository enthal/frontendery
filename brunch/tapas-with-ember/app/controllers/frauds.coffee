module.exports = App.FraudsController = Ember.ArrayController.extend
  actions:
    markAsFraud: (x) -> @removeObject(x)
