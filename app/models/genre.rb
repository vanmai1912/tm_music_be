class Genre < ApplicationRecord
  has_many :songs
  has_many :albums

  has_one_attached :logo 
end
