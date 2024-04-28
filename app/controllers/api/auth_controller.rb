class Api::AuthController < Api::ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :verify_token, only: [:login, :google_oauth2]

  def login
    user = User.find_by(email: params[:email])

    $current_user = user

    if user && user.valid_password?(params[:password])
      token = encode_token(user.id)
      render json: {
        data: {
          client: ActiveModelSerializers::SerializableResource.new(user, each_serializer: ClientSerializer),
          token: token
        },
        status: 1
      }, status: :ok
    else
      render json: { error: 'Email hoặc mật khẩu không đúng' }, status: :unauthorized
    end
  end

  def google_oauth2
    email = google_oauth2_param[:email]
    user = User.find_by(email: email)

    if user.nil?
      user = User.new(google_oauth2_param)
      user.password = SecureRandom.hex(10)
      if user.save
        token = encode_token(user.id)
        $current_user = user
        render json: {
          data: {
            client: ClientSerializer.new(user),
            token: token
          },
          status: :ok
        }
        
      else
        render json: { error: 'Có lỗi xảy ra, vui lòng thử lại sau' }, status: :unprocessable_entity
      end
    else
      token = encode_token(user.id)
      $current_user = user
      render json: {
        data: {
          client: ClientSerializer.new(user),
          token: token
        },
        status: :ok
      }
    end
  end
  

  private

  def google_oauth2_param
    params.permit(:email, :first_name, :last_name, :avatar, :avatar_oauth2, :login_by)
  end

end
