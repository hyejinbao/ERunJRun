$('.card-container').click(function(){
	console.log($(this).children().eq(2).children().eq(1).text().trim());
});