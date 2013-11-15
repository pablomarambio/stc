class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, Event
      can :read, User, id: user.id
      can :manage, Petition, user_id: user.id
      can :manage, AuthProvider, user_id: user.id
    end
  end
end