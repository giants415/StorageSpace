class ChargesController < ApplicationController
  def new
    @transaction = Transaction.find_by_id(params[:transaction_id])
    @space = Space.find_by_id(@transaction.space_id)
    logger.debug "Value of this transaction is #{@transaction.space_id}"
  end

def create
  @transaction = Transaction.find_by_id(params[:transaction_id])
  @space = Space.find_by_id(@transaction.space_id)
  logger.debug "Value of this transaction is #{@transaction}"

  # logger.debug "Value of space is #{@transaction.space_id}"
  # Amount in cents
  @amount = @space.price

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'StorageSpace Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end

private

def charge_params
  params.require(:transaction).permit(:space_id)
end
