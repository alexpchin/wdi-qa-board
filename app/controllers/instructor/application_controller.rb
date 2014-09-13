class Instructor::ApplicationController < ApplicationController
  before_action :authorize

  def authorize
    redirect_to root_path unless current_user && current_user.instructor?
  end
end
