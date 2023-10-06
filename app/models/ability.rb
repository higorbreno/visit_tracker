# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    end
    if user.attend?
      can :manage, Visitor
      can :manage, Visit
    end
    if user.employee?
      can [:read, :edit], Visit
    end
  end
end
