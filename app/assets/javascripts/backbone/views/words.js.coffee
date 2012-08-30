class Zzzytology.Views.Words extends Backbone.View
  template: HandlebarsTemplates['words']


  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)
  events:
    "submit #new_word": "newWord"

  newWord: (e) ->
    e.preventDefault()
    $('#myModal').modal('hide')
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
    @$('#words_scroll').append(view.render().el)
    navigation_view = new Zzzytology.Views.WordNavigation(model: entry)
    @$('#words_navigation_container').append(navigation_view.render().el)