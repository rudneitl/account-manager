class ApplicationController < ActionController::Base
  layout :layout_by_resource

  before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def not_found(message = 'Not found')
    fail ActionController::RoutingError.new(message)
  end

  def check_admin_role
    unless current_user.admin?
      fail ActionController::RoutingError.new('not allowed')
    end
  end

  protected

  def layout_by_resource
    if devise_controller?
      'devise/application'
    else
      'application'
    end
  end
end
