class Zzzytology.Views.PagesHome extends Backbone.View

  template: HandlebarsTemplates['pages']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
          $(@el).html(@template(pagecontent: @collection.toJSON() ))
          this        