class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
 
    if user.role? :super_admin
      can :manage, :all
    elsif user.role? :mentor
      can :manage, Courses :active => true, :user_id => user.id
      can :read, :all 
    elsif user.role? :learner
      can :read, :all 
      # manage products, assets he owns
    end
  end
end