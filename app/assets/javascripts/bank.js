


$(document).ready(function() {
	$('img:nth-child(1)').mouseenter(function() {
		$(this).animate({
    
    width: "+205",
    height: "+205"
  }, 20, function() {
    
  	 });
	});

	$('img:nth-child(1)').mouseleave(function() {
		$(this).animate({
    
    width: "+200",
    height: "+200"
  }, 20, function() {

  	 });
	});

	$('#openexistingloan').click(function() {
		console.log('Clicked');
		
	});

});