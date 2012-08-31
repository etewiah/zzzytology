class Zzzytology.Views.WordNavigation extends Backbone.View
  template: HandlebarsTemplates['word_navigation']
  tagName: 'li'


  initialize: ->
    @model.on('change', @render, this)

  render: ->
    if @model
      $(@el).html(@template(word: @model.toJSON() ))
      $(@el).attr('class', '')
      this
    else
      this        

