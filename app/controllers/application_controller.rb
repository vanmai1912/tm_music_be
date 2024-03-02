class ApplicationController < ActionController::Base
  layout 'layout'

  before_action :authenticate_user!

  private
  def authenticate_user!
    super
    if user_signed_in? && current_user.user?
      sign_out current_user
      flash[:alert] = "Bạn không có quyền truy cập."
      redirect_to new_user_session_path
    end
  end
end
