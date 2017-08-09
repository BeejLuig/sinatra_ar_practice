class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  has_many :categories
end

class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies
end

class Category < ActiveRecord::Base
  belongs_to :movie
end
