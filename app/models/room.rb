class Room < ApplicationRecord
  belongs_to :user, optional: true
  has_many :user_rooms, dependent: :destroy
  has_many :users, through: :user_rooms
  has_many :chat_rooms

  def calculate_time_difference
    # Kiểm tra xem total_time có tồn tại không
    return nil unless total_time
  
    current_time = Time.now.in_time_zone(self.created_at.time_zone)
    time_difference = current_time - self.created_at
    remainder = time_difference % self.total_time
    remainder = remainder.ceil
  
    return remainder
  end
end
