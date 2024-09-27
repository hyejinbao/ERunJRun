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
$('#id').on('focusout', function() {
    var id = $(this).val().trim();
    console.log("Sending ID: ", id); // ID 확인

    var messageElement = $('#idDiv');

    if (id === '') {
        messageElement.text('아이디를 입력하세요');
        messageElement.css('color', 'red');
    } else {
        $.ajax({
            type: 'POST',
            url: './user/checkId.do',
            data: { id: id },
            dataType: 'json',
            success: function(response) {
                console.log("Response from server: ", response); // 서버 응답 확인
                var exist = response.exist;
                if (exist) {
                    messageElement.text(id + "는 사용 불가능");
                    messageElement.css('color', 'red');
                } else {
                    messageElement.text(id + "는 사용 가능합니다");
                    messageElement.css('color', 'green');
                }
            },
            error: function(xhr, status, error) {
                console.error('AJAX 요청 실패: ', error);
                console.error('상태: ', status);
                console.dir(xhr);
            }
        });
    }
});
