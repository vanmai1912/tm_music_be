class Api::Me::CommentsController < Api::ApplicationController  
    def create
      encoded_comment = CGI.escape(params[:content])
      url = "http://127.0.0.1:8000/answers/vietnamese_classification?text=#{encoded_comment}"
      response = HTTParty.get(url)
      if response.success?
        comment = @current_user.comments.new(comment_params) 
        comment.status = response.parsed_response[0] == "POSITIVE" ? true : false
        comment.save
        render json: comment.reload, serializer: CommentSerializer, is_comment: false , status: :created
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
        params.permit(:content, :song_id, :parent_comment_id, :status)
      end
      
  end