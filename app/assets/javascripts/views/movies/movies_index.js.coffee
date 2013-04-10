class Moovie.Views.MoviesIndex extends Backbone.View
  template: JST['movies/index']

  events:
    "submit #new_movie": "createMovie"

  initialize: ->
    @collection.bind 'reset', @render, this
    @collection.bind "add", @render, this

  render: ->
    $(@el).html(@template(movies: @collection))
    this

  createMovie: (event) ->
    event.preventDefault()
    attributes = title: $("#new_movie_title").val()
    @collection.create attributes,
      wait: true
      success: -> $("#new_movie")[0].reset()
      error: @handleError

  appendMovie: (movie) =>
    view = new Moovie.Views.Movie(model: movie)
    @$("#movies").append(view.render().el)

  handleError: (movie, response) ->
    if response.status == 404
      alert "We couldn't find your movie!"
