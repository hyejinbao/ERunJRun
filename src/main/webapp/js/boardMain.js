//제목을 클릭했을때 
$('.subjectA').click(function(){
	if($('#memberDTO') .val() =='') alert('먼저 로그인하세요');
	
	else{
		//alert($(this).parent().prev().prop('tagName'));
		//alert('seq=' + $(this).parent().prev().text());
		//alert('pg=' + $('#pg').val());
		
		let pg = $('#pg').val();
		let seq = $(this).closest('.board-item').find('.seq').text();
		
		location.href = '/ERunJRun/board/boardView.do?seq=' + seq + '&pg=' + pg;
		
	}
});
