class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: %i[new create cities fetch_country_states]
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

  def configure_permitted_parameters
    default_parameters = %i[name born_on country state city]
    devise_parameter_sanitizer.permit(:sign_up, keys: default_parameters)
  end
end
