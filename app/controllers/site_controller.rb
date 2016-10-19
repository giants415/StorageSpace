class SiteController < ApplicationController
  def index
  end

  def show
    @spaces = Space.where(available: true)
  end

end
