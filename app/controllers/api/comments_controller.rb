class Api::CommentsController < Api::ApplicationController  
    def index
        @song = Song.find(params[:song_id])
        comments = @song.comments.where(parent_comment_id: nil).page(params[:page]).per(10)
        render json: {
            comments: comments,
            total_pages: comments.total_pages
        }, each_serializer: CommentSerializer, is_comment: false
    end

    def show
        comment = Comment.find(params[:id])
        comments = comment.replies
        render json: comments, each_serializer: CommentSerializer, is_comment: false
    end
      
end
