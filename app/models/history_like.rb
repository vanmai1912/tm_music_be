class HistoryLike < ApplicationRecord
  attr_accessor :song_ids
  belongs_to :user
  belongs_to :song
  
  enum tag: { history: "history", like: "like" }
end
