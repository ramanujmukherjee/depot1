class SessionsController < ApplicationController
  before_action :set_cart, only: [:new, :create, :destroy]
  skip_before_filter :authorize

  def new
    @user = User.new
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Logged Out"
  end

  private
  def set_cart
    @cart = current_cart
  end
end
