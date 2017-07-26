 	


$('#send-message').click(function(e) {
		e.preventDefault();
	dispatcher.trigger('message_sent', comment, success, failure);
	// $(this).closest('form').submit();
	})