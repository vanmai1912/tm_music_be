class Api::StripeWebhooksController < Api::ApplicationController
  skip_before_action :verify_authenticity_token 
  skip_before_action :set_cors_headers
  skip_before_action :verify_token
  skip_before_action :set_current_user_to_global

  def create
    object = params[:data][:object]
  
    invoice = Invoice.new(
      user_id: object[:metadata][:user_id],
      song_id: object[:metadata][:song_id],
      name: object[:customer_details][:name],
      email: object[:customer_details][:email],
      price: object[:amount_total],
      status: object[:payment_status],
      currency: object[:currency],
      stripe_data: object
    )
  
    if invoice.save
      render json: { success: true, invoice: invoice }
    else
      render json: { error: invoice.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def handle_checkout_session_completed(event)
    session = event['data']['object']
    # Xử lý session.completed event ở đây
    # Ví dụ: cập nhật trạng thái đơn hàng, ghi nhật ký, gửi email xác nhận, v.v.
  end

end
