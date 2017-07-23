class MessageChannel < ApplicationCable::Channel

  def subscribed
    stream_from "chat_rooms_#{params['conversation_id']}_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def reload_page()
    # process data sent from the page

    puts "<------------------got to the MessageChannel------------------>"

  end



end