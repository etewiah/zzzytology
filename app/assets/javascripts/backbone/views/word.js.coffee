class Zzzytology.Views.Word extends Backbone.View
  template: HandlebarsTemplates['word']
  tagName: 'li'


  initialize: ->
    @model.on('reset', @render, this)

  render: ->
    if @model
      $(@el).html(@template(word: @model.toJSON() ))
      $(@el).attr('class', 'span5')
      this
    else
      this        

