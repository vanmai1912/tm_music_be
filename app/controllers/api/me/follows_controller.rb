class Api::Me::FollowsController < Api::ApplicationController 
    def index
    end

    def create
      follow = @current_user.follows.new(follow_params)
  
      if follow.save
        render json: {success: 'Đã theo doi'}, status: :created
      else
        render json: { error: 'Không thể theo doi' }, status: :unprocessable_entity
      end
    end

    def destroy
      follow = @current_user.follows.find_by(artist_id: params[:id])
      follow.destroy if follow
    
      render json: { success: 'Đã hủy follow' }, status: :ok
    rescue ActiveRecord::RecordNotFound => e
        render json: { error: 'Không tìm thấy follow' }, status: :not_found
    end
      
      private
    
        def follow_params
          params.permit(:artist_id)
        end
  
end
  