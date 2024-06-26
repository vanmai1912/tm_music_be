class Api::Me::HistoriesController < Api::ApplicationController
  def index
    histories = @current_user.histories
    if histories
      render json: histories, each_serializer: SongSerializer
    else
      render json: {}, status: :ok
    end
  end
  
  def create
    history = @current_user.history_likes.history.new(history_params)

    if history.save
      song = Song.find(params[:song_id])
      @current_user.update(listened_song_id: params[:song_id])
      song.update(views: song.views + 1)      
      render json: {success: 'Đã lưu lịch sử'}, status: :created
    else
      render json: { error: 'Không thể lưu lịch sử' }, status: :unprocessable_entity
    end
  end
    
    private
  
      def history_params
        params.permit(:song_id)
      end

end
