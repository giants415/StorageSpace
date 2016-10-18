class SiteController < ApplicationController
  def index
  end

  def show
    @space = Space.all
  end

end
