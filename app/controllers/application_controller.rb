class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
before_action :authorize
proctected
def authorize
	unless user_find_by(id: session[:user_id])
		redirect_to login_url,notice:"you trying to access without permission"






end
