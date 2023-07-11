class MessagesController < ApplicationController
  def new
    @message = Message.new(chat_id: params[:chat_id], body: params[:body][0])
    @message.save
    @message_bot = Message.new(chat_id: params[:chat_id], flag: true, body: Faker::Quote.famous_last_words)
    @message_bot.save
    respond_to do |format|
      format.html {  redirect_to chat_path(Chat.find(params[:chat_id])) }
    end
  end
end
