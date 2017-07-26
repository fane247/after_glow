class MessageSocketController < WebsocketRails::BaseController


  def initialize_session
  	byebug
    # perform application setup here
    controller_store[:comment] = 0
  end

  def reload_page

  	byebug
  	event[:user_nickname]

  	WebsocketRails.users[myUser.id].send_message('new_notification', {:message => 'you\'ve got an upvote '})

  end
  def client_connected

  	puts "smashing it"
  	
  end


end
