class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    @user.authenticate(params[:password])

    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully logged in"
    else
      flash[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully!!"
  end


end
