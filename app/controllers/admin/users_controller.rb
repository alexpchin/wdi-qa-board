class Admin::UsersController < ApplicationController
  before_action Proc.new{ redirect_to root_url  unless current_user && current_user.admin?}
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes params.require(:user).permit(:role)
    redirect_to [:admin, @user], notice: "Role Updated !"
  end
end