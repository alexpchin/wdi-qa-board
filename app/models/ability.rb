class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    elsif user.student?
      can :create, :all
      can :read, :all
      can :update, Question, user_id: user.id
      can :destroy, Question, user_id: user.id
      can :vote, Question do |question|
        user.id && user.id != question.user_id
      end
    else
      can :read, :all
    end
  end
end
