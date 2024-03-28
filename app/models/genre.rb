class Genre < ApplicationRecord
  has_many :songs

  has_one_attached :logo 
end
