class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
before_action :authenticate_user!
  protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_up) do |u|
	    u.permit(:name, :username, :email, :password, :password_confirmation, :cellphone, :country, :city, :avatar)
	  end
	  devise_parameter_sanitizer.for(:account_update) do |u|
	    u.permit(:username, :name, :email, :password, :password_confirmation, :current_password, :cellphone, :country, :city, :avatar)
	  end
	end
end
