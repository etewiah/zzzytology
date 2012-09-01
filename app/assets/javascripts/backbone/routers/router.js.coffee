class Zzzytology.Routers.Contents extends Backbone.Router
  routes:
    'home': 'home',
    'collaborate': 'collaborate',
    'words': 'words'

  initialize: ->
    @wordsCollection = new Zzzytology.Collections.Words()
    @wordsCollection.fetch()

  words: ->
    view = new Zzzytology.Views.Words(collection: @wordsCollection )
    $('a[href=#words]').tab('show')
    $('#content-container').html(view.render().el)


  collaborate: ->
    view = new Zzzytology.Views.PagesHome(model: PageContentColl.where({tab_name: "collaborate"})[0] )
    $('a[href=#collaborate]').tab('show')
    $('#content-container').html(view.render().el)


  home: ->
    view = new Zzzytology.Views.PagesHome(model: PageContentColl.where({tab_name: "home"})[0] )
    $('a[href=#home]').tab('show');
    $('#content-container').html(view.render().el)
    $('#comments-container').hide()