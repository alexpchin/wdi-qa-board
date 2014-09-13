class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => "Hey! You can't do that!"
  end

  before_action :create_search_instance

  def create_search_instance
    @q = Question.search(params[:q])
  end
end
