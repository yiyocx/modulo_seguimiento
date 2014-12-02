# Controlador principal del que heredan los demas controladores
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  include Pundit

  def after_sign_in_path_for(resource)
    # rubocop:disable Style/IfUnlessModifier, Style/GuardClause
    if resource.role.eql? 'becario'
      becario_path(resource.becario)
    end

    if resource.role.eql? 'evaluador'
      evaluador_path(resource.evaluador)
    end
    # rubocop:enable Style/IfUnlessModifier, Style/GuardClause
  end
end
