class DashboardController < ApplicationController
  def index
    @total_payment = sprintf('%.2f', Invoice.sum(:price) / 100.0).to_f
    @total_user = User.all.size
    @total_song = Song.all.size
    @total_interactions = HistoryLike.all.size + Comment.all.size
  end
end