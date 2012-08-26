class Zzzytology.Views.PagesHome extends Backbone.View

  template: HandlebarsTemplates['pages']
  
  render: ->
          $(@el).html(@template())
          this        