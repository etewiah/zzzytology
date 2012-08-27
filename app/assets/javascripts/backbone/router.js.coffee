class Zzzytology.Routers.Contents extends Backbone.Router
  routes:
    '': 'home',
    'collaborate': 'collaborate'

  initialize: ->
    @collection = new Zzzytology.Collections.PageContent()
    @collection.fetch()

  collaborate: ->
    view = new Zzzytology.Views.PagesHome(collection: @collection, model: @collection.where({tab_name: "collaborate"})[0] )
    $('a[href=#collaborate]').tab('show')
    $('#content-container').html(view.render().el)


  home: ->
    view = new Zzzytology.Views.PagesHome(collection: @collection, model: @collection.where({tab_name: "home"})[0] )
    $('a[href=#]').tab('show');
    $('#content-container').html(view.render().el)
    $('#comments-container').hide()