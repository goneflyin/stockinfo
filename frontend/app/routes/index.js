import Ember from 'ember';

export default Ember.Route.extend({

  searchSymbol: null,

  model: function() {
    return this.store.find('stock', {q: this.searchSymbol});
  },

  actions: {
    doSearch: function(symbol) {
      this.set('searchSymbol', symbol);
      this.refresh();
    }
  }
});

