class Zzzytology.Views.WordNavigation extends Backbone.View
  template: HandlebarsTemplates['word_navigation']
  tagName: 'li'


  initialize: ->
    @model.on('change', @render, this)

  render: ->
    if @model
      $(@el).html(@template(word: @model.toJSON() ))
      $(@el).attr('class', 'word-navigate')
      $(@el).data("target_word", { hrf: @model.get("word") })
      this
    else
      this        

