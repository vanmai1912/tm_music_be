class Api::CommentsController < Api::ApplicationController  
    def index
        page_size = params[:page_size] || 10
        @song = Song.find(params[:song_id])
        comments = @song.comments.where(parent_comment_id: nil).page(params[:page]).per(page_size)
        render json: {
            comments: ActiveModel::Serializer::CollectionSerializer.new(comments, each_serializer: CommentSerializer,is_comment: false),
            total_pages: comments.total_pages
        }
    end      

    def show
        comment = Comment.find(params[:id])
        comments = comment.replies
        render json: comments, each_serializer: CommentSerializer, is_comment: false
    end
      
end
