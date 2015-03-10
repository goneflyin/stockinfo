import Ember from 'ember';

export default Ember.TextField.extend({

  value: '',

  valueChangeDone: function() {
    this.sendAction('symbolAction', this.value);
  },

  valueObserver: Ember.immediateObserver('value', function() {
    Ember.run.debounce(this, this.valueChangeDone, 350);
  }),

});
