class DashboardController < ApplicationController
  def index
    @total_payment = sprintf('%.2f', Invoice.sum(:price) / 100.0).to_f
    @total_user = User.all.size
    @total_song = Song.all.size
    @total_interactions = HistoryLike.like.size + Comment.all.size
    @songs = Song.order(views: :desc).first(10)
    top_song_cmt_ids = Comment.top_songs_by_true_status_ratio
    top_songs = Song.where(id: top_song_cmt_ids)
    @top_songs = top_song_cmt_ids.map { |id| top_songs.find { |song| song.id == id } }
    bottom_song_cmt_ids = Comment.bottom_songs_by_false_status_ratio
    bottom_songs = Song.where(id: bottom_song_cmt_ids)
    @bottom_songs = bottom_song_cmt_ids.map { |id| bottom_songs.find { |song| song.id == id } }
  
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

  def status_chart
    views = HistoryLike.history.where("EXTRACT(YEAR FROM created_at) = ?", Date.today.year)
    likes = HistoryLike.like.where("EXTRACT(YEAR FROM created_at) = ?", Date.today.year)
    comments = Comment.where("EXTRACT(YEAR FROM created_at) = ?", Date.today.year)
  
    current_year_view = calculate_monthly_views(views)
    current_year_interactions = calculate_monthly_interactions(likes, comments)
  
    data = {
      views: current_year_view.values_at(*1..12),
      interactions: current_year_interactions.values_at(*1..12)
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

  def calculate_monthly_views(views)
    summary = Hash.new(0)
    views.each do |view|
      month = view.created_at.month
      summary[month] += 1
    end
    summary
  end

  def calculate_monthly_interactions(likes, comments)
    summary = Hash.new(0)
    likes.each do |like|
      month = like.created_at.month
      summary[month] += 1
    end
    comments.each do |comment|
      month = comment.created_at.month
      summary[month] += 1
    end
    summary
  end
  
end
