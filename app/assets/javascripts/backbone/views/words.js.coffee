class Zzzytology.Views.Words extends Backbone.View

  template: HandlebarsTemplates['words']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)
  events:
    "click #new_word_btn": "newWord"

  newWord: (e) ->
    @collection.create(word: '44', definition: 'blaa blaaa')

  render: ->
    if @collection
      console.log(@collection.toJSON())
      $(@el).html(@template(pagecontent:  @collection.toJSON() ))
      this
    else
      this        
