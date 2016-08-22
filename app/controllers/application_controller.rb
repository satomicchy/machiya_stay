class ApplicationController < ActionController::Base
  before_action :contact
  protect_from_forgery with: :exception

#  http_basic_authenticate_with :name => ENV['BASIC_AUTH_USERNAME'], :password => ENV['BASIC_AUTH_PASSWORD'] if Rails.env == "production"

  def contact
    @lodge = Lodge.new
  end
end
