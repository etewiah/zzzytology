class Zzzytology.Views.Word extends Backbone.View

  template: HandlebarsTemplates['word']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendWord, this)
  events:
    "click #new_word_btn": "newWord"

  newWord: (e) ->
    @collection.create(word: '44', definition: 'blaa blaaa')

  render: ->
    if @collection
      console.log(@collection.toJSON())
      $(@el).html(@template(pagecontent:  @collection.toJSON() ))
      this
    else
      this        

  appendWord: (entry) =>
    view = new Raffler.Views.Entry(model: entry)
    @$('#entries').append(view.render().el)