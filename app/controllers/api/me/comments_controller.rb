class Api::Me::CommentsController < Api::ApplicationController  
    def create
      comment = @current_user.comments.new(comment_params) 
  
      if comment.save
        render json: comment, serializer: CommentSerializer, is_comment: false , status: :created
      else
        render json: { error: 'Không thể lưu comment' }, status: :unprocessable_entity
      end
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment, serializer: CommentSerializer, is_comment: true
    end
  
    def destroy
        comment = @current_user.comments.find_by(id: params[:id])
        comment.destroy if comment
      
        render json: { success: 'Đã xóa comment' }, status: :ok
    rescue ActiveRecord::RecordNotFound => e
        render json: { error: 'Không tìm thấy comment' }, status: :not_found
    end
  
    private
  
      def comment_params
        params.permit(:content, :song_id, :parent_comment_id)
      end
      
  end