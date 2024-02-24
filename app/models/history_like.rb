class HistoryLike < ApplicationRecord
  belongs_to :user
  belongs_to :song
  
  enum tag: { history: "history", like: "like" }
end
