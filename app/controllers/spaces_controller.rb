class SpacesController < ApplicationController
  def index
    @space = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.create(space_params)
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
    params.require(:space).permit(:title, :price, :street_address, :city, :state, :zip_code, :size, :available, :photo1, :photo2, :description, :user_id)
  end

  def space_id
    params[:id]
  end
end
