$(document).ready(function(){
 var quotesArray = ['"You are not Invisible"', '"You are not Forgotten"', '"You are not Invincible"'];

 $.each(quotesArray, function(i, val) {
 		setTimeout(function() {
 		  $('#message_header').fadeOut("slow", function() {
 		    $(this).text(val).fadeIn("slow");
 			});
 		}, i * 3500);
 });
}); 
