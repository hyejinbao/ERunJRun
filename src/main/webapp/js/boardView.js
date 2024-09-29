	$(function(){
    if($('#memberDTO').val() == $('#id').text()){
		$('#boardViewSpan').show();
		
	}
	else{
		$('#boardViewSpan').hide();
	}
	//글수정
	$('#boardUpdateFormBtn').click(function(){
	 $('#boardViewForm').attr('action', '/ERunJRun/board/boardUpdateForm.do');
	 $('#boardViewForm').submit();
	 
	 });
	//글삭제 - 삭제한 후에는 1페이지를 보여주기 때문에 pg를 신경x
/*	$('#boardDeleteBtn').click(function(){
		$('#boardViewForm').attr('action', '/projectMVC/board/boardDeleteForm.do');
		$('#boardViewForm').submit();
	});*/
	
	$('#boardDeleteBtn').click(function(){
		$.ajax({
			type: 'post',
			
			url: 'boardDelete.do',
			data: $('#boardViewForm').serialize(), // name=값&id=값&~~~~
			success: function() {
				alert('글 삭제 완료');
				location.href = '/ERunJRun/board/boardView.do?pg=1';
			},
			error: function(e) {
				console.log(e);
			}
		});
		});
 /*   $('#contentDiv').empty();

    if($('#subject').val() == '')
        $('#subjectDiv').html('제목 입력');
    else if($('content').val() == '')
        $('contentDiv').html('내용 입력');
    //else if($('#pwd').val().trim() != $('#repwd').val())
      //  $('#repwdDiv').html('비밀번호가 맞지 않습니다');/
    else 
        $.ajax({
            type: 'post',
            url: 'update.do',
            data: $('form[name="boardUpdateForm"]').serialize(), // name=값&id=값&~~~~
            success: function(){
                alert('글 수정 완료');
                location.href = '../index.jsp';
            },
            error: function(e){
                console.log(e);
            }
        });*/
		});