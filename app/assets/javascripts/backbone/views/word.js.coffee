class Zzzytology.Views.Word extends Backbone.View
  template: HandlebarsTemplates['word']
  tagName: 'li'

  initialize: ->
    @model.on('change', @render, this)

  events: ->
    "click .edit-word" : "editWord"
    "click .word-navigate" : "navigateWord"

  navigateWord: (e) ->
    debugger
    e.addClass("active")
  
  editWord: (e) ->
    view = new Zzzytology.Views.EditWord(model: @model)
    @$(".thumbnail").append(view.render().el)
    @$("#editWordModal").modal('show')

  render: ->
    if @model
      $(@el).html(@template(word: @model.toJSON() ))
      $(@el).attr('class', 'span5')
      this
    else
      this        

