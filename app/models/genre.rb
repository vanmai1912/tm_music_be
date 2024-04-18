class Genre < ApplicationRecord
  attr_accessor :logo

  has_many :songs
  has_many :albums

end
