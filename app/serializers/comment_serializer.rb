class CommentSerializer < ApplicationSerializer
    attributes :id, :content, :song_id, :parent_comment_id, :status, :replies, :count_reply, :created_at
    belongs_to :user, serializer: ClientSerializer

    def initialize(object, options = {})
        super
        @is_comment = options[:is_comment]
    end

    def replies
        if @is_comment
            object.replies.map { |reply| CommentSerializer.new(reply) }
        end
    end

    def count_reply 
        object.replies.size
    end
end