class UserRoom < ApplicationRecord
  enum status: { online: "online", offline: "offline" }
  
  belongs_to :user
  belongs_to :room
end
