class Zzzytology.Routers.Contents extends Backbone.Router
  routes:
    '': 'home'

  comments: ->
    view = new Betabike.Views.ContentsComments()
    $('a[href=#comments]').tab('show')
    $('#comments-container').show()
    $('#content-container').html("")
    #$('#comments-container').html(view.render().el)


  home: ->
    view = new Zzzytology.Views.PagesHome()
    $('a[href=#]').tab('show');
    $('#content-container').html(view.render().el)
    $('#comments-container').hide()