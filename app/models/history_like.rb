class HistoryLike < ApplicationRecord
  attr_accessor :song_ids
  belongs_to :user
  belongs_to :song, optional: true
  belongs_to :album, optional: true
  
  enum tag: { history: "history", like: "like" }
end
