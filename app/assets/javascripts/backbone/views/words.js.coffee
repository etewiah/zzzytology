class Zzzytology.Views.Words extends Backbone.View

  template: HandlebarsTemplates['words']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendWord, this)
  events:
    "submit #new_word": "newWord"

  newWord: (e) ->
    @collection.create(word: $('#new_word_name').val(), definition: $('#new_word_definition').val())

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