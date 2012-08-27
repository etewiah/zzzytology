class Zzzytology.Views.PagesHome extends Backbone.View

  template: HandlebarsTemplates['pages']

  initialize: ->
    @model.on('reset', @render, this)

  render: ->
    if @model
      $(@el).html(@template(pagecontent: [ @model.toJSON() ] ))
      this
    else
      this        