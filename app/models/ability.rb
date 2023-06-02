# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    else

      user ||= User.new
      cannot :manage, :all

      return unless user.present?
      cannot :index, User
      can [:read, :update, :destroy], User, id: user.id
      can :manage, Chat, user: user
      can :manage, Message, chat: user.chats
    end
  end
end
