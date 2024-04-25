# app/api/controllers/payments_controller.rb
class Api::PaymentsController < Api::ApplicationController
  def create_checkout_session
    if params[:song_id].present?
      session = Stripe::Checkout::Session.create({
        payment_method_types: ['card'],
        line_items: [{
          price: ENV['PRICE_ID'],
          quantity: 1,
        }],
        mode: 'payment',
        success_url: ENV['YOUR_DOMAIN'] + '?success=true',
        cancel_url: ENV['YOUR_DOMAIN'] + '?success=false',
        metadata: {
          user_id: @current_user.id,
          song_id: params[:song_id]
        }
      })
      render json: { url: session.url }
    else
      render json: { error: 'Vui lòng thêm thông tin id bài nhạc' }
    end
  rescue Stripe::StripeError => e
    render json: { error: e.message }, status: :unprocessable_entity
  end
end
