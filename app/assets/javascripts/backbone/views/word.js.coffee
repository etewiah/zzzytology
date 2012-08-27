class Zzzytology.Views.Word extends Backbone.View
  template: HandlebarsTemplates['word']


  initialize: ->
    @model.on('reset', @render, this)

  render: ->
    if @model
      $(@el).html(@template(word: @model.toJSON() ))
      this
    else
      this        

