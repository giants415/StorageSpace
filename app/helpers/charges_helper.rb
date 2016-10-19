module ChargesHelper

  def current_price
    @transaction = Transaction.find_by_id(params[:transaction_id])
    @space = Space.find_by_id(@transaction.space_id)
    @current_price = @space.price
  end

end
