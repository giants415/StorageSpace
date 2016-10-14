class TransactionsController < ApplicationController
  def show
    @transaction = Transaction
  end

  def create
    @transaction = Transaction.new(transaction_params)
    redirect_to root_path
  end

  private
  def transaction_params
    params.require(:transaction).permit(:stripe_id, :space_id, :renter_id, :start_date, :end_date)
  end
end
