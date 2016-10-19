class UsersController < ApplicationController
  before_action :logged_in?, only: [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      if @user.save
        login(@user)
        redirect_to @user
        WelcomeMailer.welcome_email(@user).deliver_now
      else
        flash[:error]= @user.errors.full_messages
        redirect_to new_user_path
      end
  end

  def show
    @user = User.find_by_id(params[:id])
    @spaces = Space.where(user_id: @user.id)
    @transactions = Transaction.where(user_id: @user.id)
  end

  def edit
    user_id = params[:id]
    @user = User.find_by_id(user_id)

    if @user != current_user
      redirect_to user_path(@user)
    end
  end

  def update
    user_id = params[:id]
    user = User.find_by_id(user_id)
    user.update_attributes(user_params)
    redirect_to user_path(user)
  end

  def destroy
    @user = User.find_by_id params[:id]
    @user.destroy
    redirect_to logout_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :avatar)
  end

end
