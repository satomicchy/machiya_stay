class ApplicationController < ActionController::Base
  before_action :contact
  protect_from_forgery with: :exception

  def contact
    @lodge = Lodge.new
  end
end
