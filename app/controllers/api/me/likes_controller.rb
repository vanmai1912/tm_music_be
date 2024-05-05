class Api::Me::LikesController < Api::ApplicationController
    def index
        likes = @current_user.likes.page(params[:page]).per(10)
        if likes
            render json: {
                likes: ActiveModel::Serializer::CollectionSerializer.new(likes, each_serializer: SongSerializer),
                total_pages: likes.total_pages
            }
        else
            render json: {}, status: :ok
        end
    end

    def create
        if like_params[:song_ids].present?
            like_params[:song_ids].each do |song_id|
                @current_user.history_likes.like.create(song_id: song_id)
            end
        end

        if like_params[:album_ids].present?
            like_params[:album_ids].each do |album_id|
                @current_user.history_likes.like.create(album_id: album_id)
            end
        end
        
        render json: {success: 'Đã lưu yêu thích'}, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: { error: 'Không thể lưu yêu thích' }, status: :unprocessable_entity
    end

    def destroys
        if like_params[:song_ids].present?
            like_params[:song_ids].each do |song_id|
            like = @current_user.history_likes.like.find_by(song_id: song_id)
            like.destroy if like
            end
        end
        if like_params[:album_ids].present?
            like_params[:album_ids].each do |album_id|
            like = @current_user.history_likes.like.find_by(album_id: album_id)
            like.destroy if like
            end
        end
      
        render json: { success: 'Đã xóa yêu thích' }, status: :ok
    rescue ActiveRecord::RecordNotFound => e
        render json: { error: 'Không tìm thấy lượt thích để xóa' }, status: :not_found
    end
        
        private

        def like_params
            params.permit(song_ids: [], album_ids: [])
        end
  
end
