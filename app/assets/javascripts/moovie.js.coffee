window.Moovie =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Moovie.Routers.Movies
    Backbone.history.start()

$(document).ready ->
  Moovie.initialize()
