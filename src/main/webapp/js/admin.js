$('.card-container').click(function(){
	console.log($(this).children().eq(2).children().eq(1).text().trim());
});

$('#adminLogin').click(function(){
	confirm('로그아웃 하시겠습니까?', 
		$.ajax({
           type: 'POST',
           url: './user/logout.do',
           dataType: 'text',
           success: function (data){
               location.href = './index.do'
           },error: function(xhr, status, error) {
               console.error('AJAX 요청 실패: ', error);
               console.error('상태: ', status);
               console.dir(xhr);
           }
       }))
});