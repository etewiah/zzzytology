class Zzzytology.Routers.Words extends Backbone.Router
  routes:
    '': 'words',
    '*all': 'words'

  initialize: ->
    @wordsCollection = new Zzzytology.Collections.Words()
    @wordsCollection.fetch()

  words: ->
    view = new Zzzytology.Views.Words(collection: @wordsCollection )
    $('a[href=#words]').tab('show')
    $('#words-container').html(view.render().el)

