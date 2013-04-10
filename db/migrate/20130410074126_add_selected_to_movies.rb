class AddSelectedToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :selected, :boolean, default: false
  end
end
