class Zzzytology.Collections.Words extends Backbone.Collection
  url:  '/api/liffs'
  model: Zzzytology.Models.Word
  comparator: (word) ->
    word.get('word').toLowerCase()