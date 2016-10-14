class SpacesController < ApplicationController
  def index
    @space = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.create(spaces_params)
    redirect_to spaces_path
  end

  def show
    @space = Space.find_by_id(space_id)
  end

  private

  def spaces_params
    params.require(:space).permit(:title, :price, :address, :size, :available, :photo, :description)
  end
end
