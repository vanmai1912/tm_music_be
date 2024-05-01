class DashboardController < ApplicationController
  def index
    @total_payment = sprintf('%.2f', Invoice.sum(:price) / 100.0).to_f
    @total_user = User.all.size
    @total_song = Song.all.size
    @total_interactions = HistoryLike.all.size + Comment.all.size
  end

  def client_chart
    google_count = User.google.size
    facebook_count = User.facebook.size
    render json: { google: google_count, facebook: facebook_count }
  end

  def payment_chart
    current_year_payments = Invoice.where("EXTRACT(YEAR FROM created_at) = ?", Date.today.year)
    next_year_payments = Invoice.where("EXTRACT(YEAR FROM created_at) = ?", Date.today.year - 1)

    current_year_summary = calculate_monthly_summary(current_year_payments)

    next_year_summary = calculate_monthly_summary(next_year_payments)

    data = {
      current_year: {
        year: Date.today.year,
        data: current_year_summary.values_at(*1..12) 
      },
      prev_year: {
        year: Date.today.year - 1,
        data: next_year_summary.values_at(*1..12) 
      }
    }

    render json: data
  end

  private

  def calculate_monthly_summary(payments)
    summary = Hash.new(0)
    payments.each do |payment|
      month = payment.created_at.month
      summary[month] += payment.price/100.0
    end
    summary
  end
  
end
