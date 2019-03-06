class LoginController < ApplicationController


  def new

  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      log_in(@user)
      redirect_to posts_path
    else
      flash[:errors] = ["The username or password you entered was not correct."]
      redirect_to new_login_path
    end
  end



  def destroy
      current_user
      session[:user_id] = nil
      redirect_to new_login_path
  end

private

def log_in(user)
session[:user_id] = user.id
end


def current_user
if session[:user_id]
  @current_user ||= User.find_by(id: session[:user_id])
end
end


end
