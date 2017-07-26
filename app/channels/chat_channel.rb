class ChatChannel < ApplicationCable::Channel

  def subscribed
    puts "<---------------------this is linked--------------------->"
    # byebug
    
      recipient = User.find(params[:test].to_i)
      stream_for recipient

  end

  def unsubscribed
   
  end

  def reload_page
  	 ActionCable.server.broadcast specific_channel, { message: "reloading page"}
  	 puts "reloading page"
  end

  def specific_channel
    "chat_#{params[:test]}"
  end


end