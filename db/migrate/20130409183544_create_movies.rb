class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.float :rating
      t.string :plot
      t.string :poster
      t.integer :votes

      t.timestamps
    end
  end
end
