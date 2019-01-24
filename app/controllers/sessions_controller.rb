class SessionsController < ApplicationController
	skip_before_action:authorize

  def new
  end

  def create
  	user=User.find_by(name: params[:name])
  	if user and user.authenticate(params[:password])
  sessions[:user_id]=user_id
  redirect_to admin_url
  else
     redirect_to login_url,alert:"invalid username or password"		
  end

  def destroy 
  	session[:user_id]=nil
  	redirect_to login_url,alert:"successfully logged out"
  end
end
