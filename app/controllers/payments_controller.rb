class PaymentsController < ApplicationController
  def index
    @invoices = Invoice.all.page(params[:page]).per(10)
  end
end
