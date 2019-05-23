class Ability
  include CanCan::Ability

  require 'etc'
  def initialize(current_user)

    login = Etc.getlogin
    current_user ||= User.find_by_user_name(login)

    if current_user.admin?
      can :access, :rails_admin
      can :read, :dashboard
      can :manage, :all
    elsif current_user.lead?
      can :access, :rails_admin
      can :read, :dashboard
      can [:create, :read, :update], :all
      can :delete, [:employee, :verification, :audit, :ev_case]
    else
      can :read, :all
      can [:create, :update], [:employee, :verification, :audit, :ev_case]
    end
  end
end
