class Moovie.Views.MoviesIndex extends Backbone.View
  template: JST['movies/index']

  events:
    "submit #new_movie": "createMovie"
    "click #select_movie": "selectMovie"

  initialize: ->
    @collection.bind 'reset', @render, this
    @collection.bind "add", @appendMovie, this

  render: ->
    $(@el).html(@template())
    @collection.each(@appendMovie)
    this

  createMovie: (event) ->
    event.preventDefault()
    attributes = title: $("#new_movie_title").val()
    @collection.create attributes,
      wait: true
      success: -> $("#new_movie")[0].reset()
      error: @handleError

  selectMovie: (event) ->
    event.preventDefault()
    @collection.selectMovie()

  appendMovie: (movie) ->
    view = new Moovie.Views.Movie(model: movie)
    $("#movies").append(view.render().el)

  handleError: (movie, response) ->
    if response.status == 500
      alert "Something goes wrong, we'll back soon"
    if response.status == 404
      alert "We couldn't find your movie!"
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
