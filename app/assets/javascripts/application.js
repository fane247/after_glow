// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require websocket_rails/main
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require cable
//= require_tree .	


var dispatcher = new WebSocketRails('localhost:3001/websocket');

var comment = {
	
	current_user_id: $('meta[name="current_user.id"]').attr('content'),
	recipient_user_id: $('meta[name="recipient_user.id"]').attr('content')

}



var success = function(response) {
	console.log("Wow it worked: "+response.message);
}

var failure = function(response) {
	console.log("That just totally failed: "+response.message);
}



dispatcher.on_open = function(data) {
  console.log('Connection has been established: ', data);

 	$('#send-message').click(function(e) {
 		e.preventDefault();
		dispatcher.trigger('message_sent', comment, success, failure);
		// $(this).closest('form').submit();
	})



  dispatcher.bind('message-recived', function (event) {
  	
  	window.locaton.reload();
  	console.log()

  });



	var object_to_send = { data: 'test' }

	dispatcher.trigger('message_sent', object_to_send, success, failure); 

}



