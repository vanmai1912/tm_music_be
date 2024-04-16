class Invitation < ApplicationRecord
  belongs_to :user

  validates :email, presence: true
  validates :song_id, presence: true
  validates :pin, presence: true, length: { is: 6 }
end
