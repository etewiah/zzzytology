class Zzzytology.Views.Words extends Backbone.View

  template: HandlebarsTemplates['words']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendWord, this)
  events:
    "submit #new_word": "newWord"

  newWord: (e) ->
    @collection.create(word: '44', definition: 'blaa blaaa')

  render: ->
    if @collection
      $(@el).html(@template())
      @collection.each(@appendWord)
      this
    else
      this        

  appendWord: (entry) =>
    view = new Zzzytology.Views.Word(model: entry)
    @$('#words').append(view.render().el)