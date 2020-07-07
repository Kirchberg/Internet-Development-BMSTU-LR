class SessionController < ApplicationController
  def new; end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/explicit/in', success: 'You Signed In Succesfully.'
    else
      redirect_to '/login', danger: 'Invalid login or password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login', warning: 'You have been logged out.'
  end
end
