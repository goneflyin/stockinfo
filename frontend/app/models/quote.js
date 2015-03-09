import DS from 'ember-data';

export default DS.Model.extend({
  avg: DS.attr('number'),
  open: DS.attr('number'),
  close: DS.attr('number'),
  high: DS.attr('number'),
  low: DS.attr('number'),
  date: DS.attr('date'),
  volume: DS.attr('number')
});