class Zzzytology.Views.EditWord extends Backbone.View
  template: HandlebarsTemplates['words/edit_word']

  events: ->
    "submit #edit_word" : "updateWord"

  
  updateWord: (e) ->
    e.preventDefault()
    $('#editWordModal').modal('hide')
    @model.save(word: $('#edit_word_name').val(), definition: $('#edit_word_definition').val())

  render: ->
    if @model
      $(@el).html(@template(word: @model.toJSON() ))
      this
    else
      this        

