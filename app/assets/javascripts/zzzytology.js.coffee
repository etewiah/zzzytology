window.Zzzytology =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  #init: -> alert 'Hello from Backbone!'
  init: ->
  	new Zzzytology.Routers.Contents
  	Backbone.history.start()

$(document).ready ->
  Zzzytology.init() 
