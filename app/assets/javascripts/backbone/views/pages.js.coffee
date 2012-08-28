class Zzzytology.Views.PagesHome extends Backbone.View
  template: HandlebarsTemplates['pages']

  render: ->
    if @model
      $(@el).html(@template(pagecontent: [ @model.toJSON() ] ))
      this
    else
      this        