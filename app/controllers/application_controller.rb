class ApplicationController < ActionController::Base
before_action :authenticate_user!
before_action :confiqure_permitted_parameters, if: :devise_controller?

private
def confiqure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
end

end
