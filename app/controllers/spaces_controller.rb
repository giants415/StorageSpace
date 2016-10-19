class SpacesController < ApplicationController
  def index
    @spaces = Space.where(available: true)
  end

  def new
    if current_user
      @space = Space.new
    else
      redirect_to login_path
    end
  end

  def create
      @space = Space.create(space_params)
      flash[:notice] = "Your listing was successfully created"
      redirect_to spaces_path
  end

  def edit
    space_id = params[:id]
    @space = Space.find_by_id(space_id)
  end

  def update
    space_id = params[:id]
    space = Space.find_by_id(space_id)
    space.update_attributes(space_params)
    redirect_to space_path(space)
  end

  def destroy
    space_id = params[:id]
    space = Space.find_by_id(space_id)
    space.destroy
    redirect_to spaces_path
  end

  def show
    @space = Space.find_by_id(space_id)
  end

  private

  def space_params
    params.require(:space).permit(:title, :price, :street_address, :size, :available, :photo1, :description, :user_id)
  end

  def space_id
    params[:id]
  end
end
