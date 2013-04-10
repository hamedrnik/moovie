class AddTmdbUrlToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :tmdb_url, :string
  end
end
