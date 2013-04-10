class Moovie.Views.Movie extends Backbone.View
  template: JST['movies/movie']
  tagName: "li"
  className: "span4"

  initialize: ->
    @model.bind 'change', @render, this
    @model.bind 'highlight', @highlightSelected, this

  highlightSelected: ->
    $('.selected').removeClass('highlight')
    @$('.selected').addClass('highlight')

  render: ->
    $(@el).html(@template(movie: @model))
    this
