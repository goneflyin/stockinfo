import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('stocks', function() {});
  this.resource('stock', { path: '/stocks/:symbol' });
});

export default Router;
