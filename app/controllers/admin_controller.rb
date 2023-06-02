class AdminController < ApplicationController
  load_and_authorize_resource :class => false

  def users
    @users = User.includes(:chats).paginate(page: params[:page])
  end
end
