class TransactionsController < ApplicationController
  def show
    @transaction = Transaction.find_by_id(params[:id])
  end

  def new
    @space = Space.find_by_id(params[:space_id])
    @transaction = Transaction.new
  end

  def create
    @space = Space.find_by_id(params[:space_id])
    @transaction = Transaction.create(transaction_params)

    redirect_to space_transaction_path(@space.id, @transaction.id)
  end

  private
  def transaction_params
    params.require(:transaction).permit(:stripe_id, :space_id, :user_id, :start_date, :end_date)
  end
end
