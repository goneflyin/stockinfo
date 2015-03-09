import DS from 'ember-data';

export default DS.Model.extend({
  industry: DS.attr('string'),
  ipoYear: DS.attr('number'),
  marketCap: DS.attr('string'),
  name: DS.attr('string'),
  sector: DS.attr('string'),
  symbol: DS.attr('string'),
  quotes: DS.hasMany('quote')
});
