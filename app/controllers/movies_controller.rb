class MoviesController < ApplicationController
  respond_to :json

  def index
    respond_with Movie.all
  end

  def show
    respond_with Movie.find(params[:id])
  end

  def create
    @tmdb_movie = TmdbMovie.find(:title => params[:movie][:title], :limit => 1)

    if !@tmdb_movie.empty?
      respond_with Movie.create(title: @tmdb_movie.name, rating: @tmdb_movie.rating, plot: @tmdb_movie.overview,
        poster: @tmdb_movie.posters[1].url, votes: @tmdb_movie.votes, tmdb_url: @tmdb_movie.url)
    else
      raise ActiveRecord::RecordNotFound, "We couldn't find your movie'"
    end
  end

  def update
    respond_with Movie.update(params[:id], params[:movie])
  end

  def destroy
    respond_with Movie.destroy(params[:id])
  end
end
