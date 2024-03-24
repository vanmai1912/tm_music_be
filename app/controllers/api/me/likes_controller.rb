class Api::Me::LikesController < Api::ApplicationController
    def index
        likes = @current_user.likes
        if likes
        render json: likes, each_serializer: SongSerializer
        else
        render json: {}, status: :ok
        end
    end

    def create
        like_params[:song_ids].each do |song_id|
            @current_user.history_likes.like.create(song_id: song_id)
        end
        
        render json: {success: 'Đã lưu yêu thích'}, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: { error: 'Không thể lưu yêu thích' }, status: :unprocessable_entity
    end

    def destroys
        like_params[:song_ids].each do |song_id|
          like = @current_user.history_likes.like.find_by(song_id: song_id)
          like.destroy if like
        end
      
        render json: { success: 'Đã xóa yêu thích' }, status: :ok
    rescue ActiveRecord::RecordNotFound => e
        render json: { error: 'Không tìm thấy lượt thích để xóa' }, status: :not_found
    end
        
        private

        def like_params
            params.permit(song_ids: [])
        end
  
end
