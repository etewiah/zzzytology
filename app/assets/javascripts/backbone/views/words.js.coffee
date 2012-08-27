class Zzzytology.Views.Words extends Backbone.View

  template: HandlebarsTemplates['words']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    if @collection
      console.log(@collection.toJSON())
      $(@el).html(@template(pagecontent:  @collection.toJSON() ))
      this
    else
      this        