class UsersController < ApplicationController
  load_and_authorize_resource

  def show
    @user = User.includes(:chats).find(params[:id])
  end
end