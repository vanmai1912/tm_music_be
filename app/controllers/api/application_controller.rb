require 'jwt'

class Api::ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :set_cors_headers
  before_action :verify_token
  before_action :set_current_user_to_global

  private

  def set_cors_headers
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
    response.headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, X-Requested-With'
  end

  def verify_token
    token = request.headers['Authorization']&.split(' ')&.last
    if token
      begin
        decoded_token = JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
        user_id = decoded_token.first['user_id']
        @current_user = User.find(user_id)
      rescue JWT::ExpiredSignature
        render json: { error: 'Token expired' }, status: :unauthorized
      rescue JWT::DecodeError
        render json: { error: 'Invalid token' }, status: :unauthorized
      end
    else
      render json: { error: 'Token missing' }, status: :unauthorized
    end
  end

  def encode_token(user_id)
    payload = { user_id: user_id, exp: Time.now.to_i + 3.hours.to_i } 
    JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
  end

  
  def set_current_user_to_global
    $current_user = @current_user
  end
end
