class Comment < ApplicationRecord
    belongs_to :song
    belongs_to :user
    belongs_to :parent_comment, class_name: "Comment", optional: true
    has_many :replies, class_name: "Comment", foreign_key: :parent_comment_id, dependent: :destroy


    def self.top_songs_by_true_status_ratio
        subquery = Comment.select('song_id, SUM(CASE WHEN status = TRUE THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS true_status_ratio')
                          .group('song_id')
                          .to_sql
    
        Comment.from("(#{subquery}) AS comments_subquery")
               .order('true_status_ratio DESC')
               .limit(5)
               .pluck(:song_id)
    end

    def self.bottom_songs_by_false_status_ratio
        subquery = Comment.select('song_id, SUM(CASE WHEN status = FALSE THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS false_status_ratio')
                          .group('song_id')
                          .to_sql
    
        Comment.from("(#{subquery}) AS comments_subquery")
               .order('false_status_ratio DESC')
               .limit(5)
               .pluck(:song_id)
    end
end
