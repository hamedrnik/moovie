class Movie < ActiveRecord::Base
  attr_accessible :plot, :poster, :rating, :title, :votes, :selected, :tmdb_url

  validates_presence_of :title
  validates_uniqueness_of :title
end
