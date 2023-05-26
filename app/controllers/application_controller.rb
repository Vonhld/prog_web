class ApplicationController < ActionController::Base
  before_action :set_chat

  def set_chat
    @chats = Chat.all
  end

  def after_sign_in_path_for(resource)
    home_path
  end
end
