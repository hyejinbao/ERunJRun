   $(function(){
    if($('#memberDTO').val() == $('#id').text()){
      $('#boardViewSpan').hide();
      
   }
   else{
      $('#boardViewSpan').show();
   }
   //글수정
   $('#boardUpdateBtn').click(function(){
      console.log("seq:", $('#seq').val()); // 콘솔
      console.log("pg:", $('#pg').val()); // 콘솔
    $('#boardViewForm').attr('action', '/ERunJRun/board/boardUpdateForm.do');
    $('#boardViewForm').submit();
    
    });
   //글삭제 - 삭제한 후에는 1페이지를 보여주기 때문에 pg를 신경x
/*   $('#boardDeleteBtn').click(function(){
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
  });