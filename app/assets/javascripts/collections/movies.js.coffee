class Moovie.Collections.Movies extends Backbone.Collection
  url: '/api/movies'

  selectMovie: ->
    selected = @shuffle()[0]
    if selected
      selected.set(selected: true)
      selected.save()
      selected.trigger("highlight")
