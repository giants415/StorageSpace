class TransactionsController < ApplicationController
  def show
    @transaction = Transaction.find_by_id(params[:id])
    @space = Space.find_by_id(@transaction.space_id)
  end

  def new
    @space = Space.find_by_id(params[:space_id])
    @transaction = Transaction.new
  end

  def create
    @space = Space.find_by_id(params[:space_id])
    @transaction = Transaction.create(transaction_params)
    @space.available = false
    @space.save
    redirect_to new_transaction_charge_path(@transaction.id)
  end

  private
  def transaction_params
    params.require(:transaction).permit(:stripe_id, :space_id, :user_id, :start_date, :end_date)
  end
end
