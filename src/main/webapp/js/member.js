$('#writeBtn').click(function (){
       $.ajax({
           type: 'POST',
           url: './user/write.do',
           data: $('form[name="signUpForm"]').serialize(),
           success: function (data){
               alert('회원가입이 완료되었습니다.')
               location.href = './index.do'

           },error: function(xhr, status, error) {
               console.error('AJAX 요청 실패: ', error);
               console.error('상태: ', status);
               console.dir(xhr);
           }
       });
});

$('#loginBtn').click(function (){
       $.ajax({
           type: 'POST',
           url: './user/login.do',
           data: $('#loginForm').serialize(),
           success: function (data){
               location.href = './index.do'
           },error: function(xhr, status, error) {
               console.error('AJAX 요청 실패: ', error);
               console.error('상태: ', status);
               console.dir(xhr);
           }
       });
});

$('#logoutBtn').click(function (){
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
       });
});