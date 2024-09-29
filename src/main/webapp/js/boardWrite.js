$(function(){
	$('#boardWriteBtn').click(function(){
		$('#subjectDiv').empty();
		$('#contentDiv').empty();
		
		if($('#subject').val() == '')
			$('#subjectDiv').html('제목을 입력하세요');
		else if($('#content').val() == '')
			$('#contentDiv').html('내용을 입력하세요');
		else
		$.ajax({
			type: 'post',
			url : '/ERunJRun/board/boardWrite.do',
			data : {
				'subject' : $('#subject').val(),
				'content' : $('#content').val()
			},
			success :
			 (function() {
				alert("글쓰기완료");
				location.href = "/ERunJRun/board/boardMain.do?pg=1";
			}),
			
			error : function(e){
				console.log(e);
			}
		});
	});
});