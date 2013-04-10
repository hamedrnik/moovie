class Movie < ActiveRecord::Base
  attr_accessible :plot, :poster, :rating, :title, :votes

  validates_presence_of :title
end
