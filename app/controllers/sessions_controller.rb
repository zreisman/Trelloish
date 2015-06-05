class SessionsController < ApplicationController
  def new
   @user = User.new
   render :new
  end

  def create
    user = User.find_by_credentials(user_params[:email], user_params[:password])
    if user
      log_in!(user)
      redirect_to root_url
    else
      flash.now[:errors] = ["Invalid credentials"]
      @user = User.new(email: user_params[:email])
      render :new
    end
  end
end
