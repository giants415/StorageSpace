class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def default_url_options
    if Rails.env.production?
      {:host => "https://young-ravine-84460.herokuapp.com/"}
    else
      {:host => "localhost:3000"}
    end
  end
end
