class Access < ApplicationRecord
  belongs_to :business
  belongs_to :building
  belongs_to :members
end
