class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    else
      can :create, :all
      can :read, :all
      can :update, Question, user_id: user.id
      can :destroy, Question, user_id: user.id
    end
  end
end
