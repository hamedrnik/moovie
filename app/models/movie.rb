class Movie < ActiveRecord::Base
  attr_accessible :plot, :poster, :rating, :title, :votes
end
