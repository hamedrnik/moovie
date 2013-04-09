class Moovie.Views.MoviesIndex extends Backbone.View

  template: JST['movies/index']

  initialize: ->
    @collection.bind 'reset', @render, this

  render: ->
    $(@el).html(@template(movies: @collection))
    this
