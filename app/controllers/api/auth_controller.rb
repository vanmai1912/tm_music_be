
class Api::AuthController < Api::ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :verify_token, only: :login

  def login
    user = User.find_by(email: params[:email])

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

end
