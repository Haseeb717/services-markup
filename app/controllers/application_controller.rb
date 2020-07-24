class ApplicationController < ActionController::Base
  include Pundit
  
  before_action :authenticate_user!, only: [:create, :update, :destroy]

  before_action :configure_permitted_parameters, if: :devise_controller?

  

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :first_name, :last_name, :avatar,:resume])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :first_name, :last_name, :avatar,:resume])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
