require 'google/apis/oauth2_v2'

class Api::AuthController < Api::ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :verify_token, only: [:login, :google_oauth2]

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

  def google_oauth2
    access_token = params[:access_token]

    user_data = get_user_data(access_token)

    render json: user_data.to_json
  end

  private

  def get_user_data(access_token)
    client = Google::Apis::Oauth2V2::Oauth2Service.new
    client.authorization = Google::Auth::UserRefreshCredentials.new(
      client_id: '',
      client_secret: '',
      access_token: access_token
    )

    user_data = client.get_userinfo

    return user_data
  end

end
