class Moovie.Routers.Movies extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new Moovie.Collections.Movies()
    @collection.fetch()

  index: ->
    view = new Moovie.Views.MoviesIndex(collection: @collection)
    $('#container').html(view.render().el)
