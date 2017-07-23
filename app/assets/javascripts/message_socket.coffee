# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




App.conversation = App.cable.subscriptions.create {
    channel: "message_socket"
    conversation_id: $('meta[name="conversation.id"]').attr('content')
    recipient_user_id: $('meta[name="recipient_user.id"]').attr('content')
    current_user_id: $('meta[name="current_user.id"]').attr('content')

  },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Data received

  send_message: (conversation_id, recipient_id, sender_id) ->
    @perform 'send_message', conversation_id: conversation_id, recipient_id: recipient_id, sender_id: sender_id


$('#send-message').click(function(e) {
		e.preventDefault();
		App.conversation.send_message $('meta[name="conversation.id"]').attr('content') $('meta[name="recipient_user.id"]').attr('content') $('meta[name="current_user.id"]').attr('content')
		$(this).closest('form').submit();
	
	})




