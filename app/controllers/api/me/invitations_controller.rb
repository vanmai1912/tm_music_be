class Api::Me::InvitationsController < Api::ApplicationController
  include ActionView::Helpers::NumberHelper

  def index
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      invitation = @current_user.invitations.new(email: params[:email], pin: generate_pin, price: params[:price], song_id: params[:song_id])
      if invitation.save
        send_pin_email(invitation)
        render json: { 
          message: "Invitation sent successfully",
          status: :ok
          # price: number_with_precision(invitation.price, precision: 0)
        }, status: :created
      else
        render json: { errors: invitation.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "Không tìm thấy email yêu cầu" }, status: :unprocessable_entity
    end
  end

  def show
    invitation = Invitation.where(pin: params[:id].to_s, user_id: @current_user.id).first
    if invitation 
      if @current_user.albums.favorite&.first
        @current_user.albums.favorite&.first.album_songs.create(song_id: invitation.song_id )
        render json: { 
          message: "Chia sẻ bài hát thành công",
          status: :ok
          # price: number_with_precision(invitation.price, precision: 0)
        }, status: :created
      else 
        render json: { message: "Có lỗi xảy ra, vui lòng thử lại", }, status: :unprocessable_entity
      end
    else
      render json: { message: "Có lỗi xảy ra, vui lòng thử lại", }, status: :unprocessable_entity
    end

  end

  private

  def generate_pin
    SecureRandom.random_number(1000000).to_s.rjust(6, "0")
  end

  def send_pin_email(invitation)
    UserMailer.music_shared(invitation).deliver_now
  end
end