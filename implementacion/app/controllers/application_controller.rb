# Controlador principal del que heredan los demas controladores
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  include Pundit

  def after_sign_in_path_for(resource)
    # rubocop:disable Style/GuardClause
    if !resource.role.eql? && resource.role == 'becario'
      becario_path(resource.becario)
    end
    # rubocop:enable Style/GuardClause
  end
end
