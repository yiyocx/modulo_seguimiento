class BecarioPolicy < ApplicationPolicy
  def index?
    true 
  end

  def create?
    true
  end

  def new?
    true
  end

  def show?
    true
  end

  def informes_por_convocatoria?
    if user.Becario?
      true
    end 
  end

  def informes_anuales_condonacion?
    if user.Becario?
      true
    end 
  end 
end
