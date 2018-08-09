class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if:  :devise_controller?

  def after_sign_in_path(resoure_or_scope)
    dashboard_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :phone_number, :description])
  end

end
