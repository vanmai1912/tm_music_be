class Office < ApplicationRecord
  belongs_to :business
  belongs_to :lease
end
