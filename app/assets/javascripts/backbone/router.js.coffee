class Zzzytology.Routers.Contents extends Backbone.Router
  routes:
    '': 'home'

  initialize: ->
    @collection = new Zzzytology.Collections.PageContent()
    @collection.fetch()

  comments: ->
    view = new Zzzytology.Views.ContentsComments()
    $('a[href=#comments]').tab('show')
    $('#comments-container').show()
    $('#content-container').html("")
    #$('#comments-container').html(view.render().el)


  home: ->
    view = new Zzzytology.Views.PagesHome(collection: @collection)
    $('a[href=#]').tab('show');
    $('#content-container').html(view.render().el)
    $('#comments-container').hide()