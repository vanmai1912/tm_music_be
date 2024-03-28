class CommentSerializer < ActiveModel::Serializer
    attributes :id, :content, :song_id, :parent_comment_id, :replies, :count_reply

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