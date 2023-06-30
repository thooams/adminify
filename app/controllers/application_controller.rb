# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit::Authorization

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def configure_permitted_parameters
    update_attrs = %i[password password_confirmation current_password]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    devise_parameter_sanitizer.permit(:invite, keys: [:role])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: %i[first_name last_name])
  end

  private

  def user_not_authorized
    flash[:alert] = t('pundit_not_authorize')
    redirect_back(fallback_location: root_path)
  end
end
