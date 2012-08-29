class Zzzytology.Views.WordNavigation extends Backbone.View
  template: HandlebarsTemplates['word_navigation']


  initialize: ->
    @model.on('reset', @render, this)

  render: ->
    if @model
      $(@el).html(@template(word: @model.toJSON() ))
      this
    else
      this        

