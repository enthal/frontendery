Todos.TodosController = Ember.ArrayController.extend({
  actions: {
    createTodo: function () {
      var title = this.get('newTitle').trim();
      if (!title) { return; }

      var todo = this.store.createRecord('todo', {
        title: title,
        isCompleted: false
      }).save();

      this.set('newTitle', '');
    }
  }
});

Todos.TodoController = Ember.ObjectController.extend({
  isCompleted: function(key, value){
    var model = this.get('model');

    if (value === undefined) {
      return model.get('isCompleted');
    } else {
      model.set('isCompleted', value);
      model.save();
      return value;
    }
  }.property('model.isCompleted')
});
