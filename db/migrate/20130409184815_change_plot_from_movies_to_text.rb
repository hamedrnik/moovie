class ChangePlotFromMoviesToText < ActiveRecord::Migration
  def up
    change_column :movies, :plot, :text
  end

  def down
    change_column :movies, :plot, :string
  end
end
