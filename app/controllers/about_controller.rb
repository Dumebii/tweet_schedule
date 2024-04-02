class AboutController < ApplicationController
def index
  flash.now[:notice] = "Logged in successfully!"
  flash.now[:alert] = "Invalid email or password"
end
def home
  if session[:user_id]
    @user = User.find_by id: session[:user_id]
end
end
end
