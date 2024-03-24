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
