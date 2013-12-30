Todos.Todo = DS.Model.extend({
  title:       DS.attr('string'),
  isCompleted: DS.attr('boolean')
});

Todos.Todo.FIXTURES = [
  {
    id: 1,
    title: 'Learn Ember.js!',
    isCompleted: true
  },
  {
    id: 2,
    title: '...',
    isCompleted: false
  },
  {
    id: 5,
    title: 'Profit!',
    isCompleted: false
  },
  {
    id: 4,
    title: 'And then some!',
    isCompleted: false
  }
];
