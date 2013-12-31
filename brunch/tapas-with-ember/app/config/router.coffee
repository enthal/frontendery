module.exports = App.Router.map ->
  @resource 'frauds'#, path:'/frauds'
  @resource 'fraud', path:'/fraud/:fraud_id'

# App.Router.reopen location: 'history'
