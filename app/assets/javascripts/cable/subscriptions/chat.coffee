# App.cable.subscriptions.create "AppearanceChannel",
#   # Called when the subscription is ready for use on the server
#   connected: ->
#   @perform("reload_page")

#   # Called when the WebSocket connection is closed
#   disconnected: ->


#   # Called when the subscription is rejected by the server
#   rejected: ->


  # message_sent: ->
  # @perform("reload_page")

jQuery ($) ->
  # your code here!

	recipient_id = $("meta[name='recipient_id']").attr("content");
	# debugger
	console.log(recipient_id)


	# App.cable.subscriptions.create { channel: "ChatChannel", recipient_id: recipient_id  }

	App.chatChannel = App.cable.subscriptions.create { channel: "ChatChannel",  test: recipient_id},
	  received: (data) ->
	    console.log("received")

	  send_message: ->
	  	@perform ("reload_page")

	$('#send-button').click (event) ->

		e.preventDefault()
		App.chatChannel.send	
			recipient: recipient_id

		$(this).closest('form').submit











 


# $('#send-button').click(function(event){


#     e.preventDefault();
#     $(this).closest('form').submit();


#   })


# $("meta[name='recipient_id']").attr("content")

