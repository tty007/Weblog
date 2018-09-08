class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password])
    end
end
