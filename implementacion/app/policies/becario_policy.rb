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
end
