class Api::CommentsController < Api::ApplicationController  
    def index
        @song = Song.find(params[:song_id])
        comments = @song.comments.where(parent_comment_id: nil)
        render json: comments, each_serializer: CommentSerializer, is_comment: false
    end
      
end