class MoviesController < ApplicationController
  respond_to :json

  def index
    respond_with Movie.all
  end

  def show
    respond_with Movie.find(params[:id])
  end

  def create
    respond_with Movie.create(params[:movie])
  end

  def update
    respond_with Movie.update(params[:id], params[:movie])
  end

  def destroy
    respond_with Movie.destroy(params[:id])
  end
end
