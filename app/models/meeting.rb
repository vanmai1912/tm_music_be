class Meeting < ApplicationRecord
  belongs_to :meeting_room
  belongs_to :business
  belongs_to :member
end
