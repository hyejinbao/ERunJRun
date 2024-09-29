/*회원가입*/
$('#writeBtn').click(function (){
    // 입력값 가져오기
    var id = $('#id').val().trim();
    var pwd = $('#pwd').val().trim();
    var name = $('#name').val().trim();
    var email1 = $('#email1').val().trim();
    var email2 = $('#email2').val().trim();

    // 메시지를 초기화합니다.
    $('#idDiv').html('');
    $('#pwdDiv').html('');
    $('#nameDiv').html('');
    $('#emailDiv').html('');
    $('#agreementDiv').html('');

    // 유효성 검사
    var isValid = true; // 폼 유효성 상태

    if (id === '') {
        $('#idDiv').html("아이디를 입력해주세요");
        isValid = false; // 유효하지 않음
    }
    if (pwd === '') {
        $('#pwdDiv').html("비밀번호를 입력해주세요");
        isValid = false; // 유효하지 않음
    }
    if (name === '') {
        $('#nameDiv').html("이름을 입력해주세요");
        isValid = false; // 유효하지 않음
        }
    if (email1 === '') { // 이메일 유효성 추가
        $('#emailDiv').html("이메일을 입력해주세요");
        isValid = false; // 유효하지 않음
    }
    if (email2 === '') { // 이메일 유효성 추가
        $('#emailDiv').html("이메일을 입력해주세요");
        isValid = false; // 유효하지 않음
    }
    // 이용약관 동의 체크
    if (!$('#agreementCheckbox').is(':checked')) {
        $('#agreementDiv').html('이용약관에 동의해야 합니다.');
        isValid = false; // 유효하지 않음
    }
    // 모든 필드가 유효할 경우 추가 처리
    if (isValid) {
        console.log("폼이 유효합니다.");
        // 여기에 폼 제출 로직 추가 가능
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
    }
});

/*로그인*/
$('#loginBtn').click(function (){
    $.ajax({
        type: 'POST',
        url: './user/login.do',
        data: $('#loginForm').serialize(),
        success: function (response) {
            if (response.trim() === "success") {
                location.href = './index.do'
            }else if(response.trim() === "fail") {
                $('#loginCheckDiv').html("아이디 혹은 비밀번호가 일치하지 않습니다.")
            }
        }, error: function (xhr, status, error ,data) {
            console.error('AJAX 요청 실패: ', error);
            console.error('상태: ', status);
            console.dir(xhr);
        }
    });
});

/*로그아웃*/
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

/*아이디 중복체크*/
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
                    messageElement.text("이미 가입된 아이디입니다.");
                    messageElement.css('color', 'red');
                } else {
                    messageElement.text("사용 가능한 아이디입니다.");
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

/*비밀번호 유효성 검사*/
$(document).ready(function() {
    $('#repwd').on('focusout', function() {
        pwdCheck();
    });
    function pwdCheck() {
        var pwd = $('#pwd').val();
        var repwd = $('#repwd').val();
        var messageElement = $('#pwdDiv'); // 비밀번호 입력란 아래 메시지 표시할 요소

        // 초기화
        messageElement.text('');
        messageElement.css('color', ''); // 초기 색상

        var pwdPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}$/;
        if (!pwdPattern.test(pwd)) {
            messageElement.text("비밀번호는 영문자와 숫자의 조합으로 6자리 이상이어야 합니다.");
            messageElement.css('color', 'red');
        } else if (pwd !== repwd) {
            messageElement.text("비밀번호가 맞지 않습니다.");
            messageElement.css('color', 'red');
        } else {
            messageElement.text("비밀번호가 일치합니다.");
            messageElement.css('color', 'green');
        }
    }
});
/*마이페이지 수정*/
$('#updateBtn').click(function () {
    var pwd = $('#myPagePwd').val().trim();
    var name = $('#myPageName').val().trim();
    var email1 = $('#myPageEmail1').val().trim();
    var email2 = $('#myPageEmail2').val().trim();

    // 메시지를 초기화합니다.
    $('#myPagePwdDiv').html('');
    $('#myPageNameDiv').html('');
    $('#myPageEmailDiv').html('');
    $('#myPageAgreeDiv').html('');

    // 유효성 검사
    var myPageValid = true; // 폼 유효성 상태

    if (pwd === '') {
        $('#myPagePwdDiv').html("비밀번호를 입력해주세요");
        myPageValid = false; // 유효하지 않음
    }
    if (name === '') {
        $('#myPageNameDiv').html("이름을 입력해주세요");
        myPageValid = false; // 유효하지 않음
        }
    if (email1 === '') { // 이메일 유효성 추가
        $('#myPageEmailDiv').html("이메일을 입력해주세요");
        myPageValid = false; // 유효하지 않음
    }
    if (email2 === '') { // 이메일 유효성 추가
        $('#myPageEmailDiv').html("이메일을 입력해주세요");
        myPageValid = false; // 유효하지 않음
    }
    // 이용약관 동의 체크
    if (!$('#myPageAgreementCheckbox').is(':checked')) {
        $('#myPageAgreeDiv').html('이용약관에 동의해야 합니다.');
        myPageValid = false; // 유효하지 않음
    }
    // 모든 필드가 유효할 경우 추가 처리
    if (myPageValid) {
        $.ajax({
            type: 'POST', //내보낸다
            url: './user/update.do',//해당 URL로
            data: $('form[name="myPageForm"]').serialize(),//form안에 있는 모든 data를
            success: function (response) {
                if (response.trim() == 'fail') {
                    alert('회원정보 수정 실패');
                } else {
                    alert('회원정보 수정 완료');
                    location.href = './index.do';
                }
            },
            error: function (xhr, status, error) {
                console.error('AJAX 요청 실패: ', error);
                console.error('상태: ', status);
                console.dir(xhr);
            }
        });
    }
});
/*마이페이지 비밀번호유효성*/
$(document).ready(function() {
    $('#myPageRePwd').on('focusout', function() {
        validatePasswords();
    })
    function validatePasswords() {
        var myPagePwd = $('#myPagePwd').val();
        var myPageRePwd = $('#myPageRePwd').val();
        var messageElement = $('#myPagePwdDiv'); // 비밀번호 입력란 아래 메시지 표시할 요소

        // 초기화
        messageElement.text('');
        messageElement.css('color', ''); // 초기 색상

        let mvPagePattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}$/;
        if (!mvPagePattern.test(myPagePwd)) {
            messageElement.text("비밀번호는 영문자와 숫자의 조합으로 6자리 이상이어야 합니다.");
            messageElement.css('color', 'red');
        } else if (myPagePwd !== myPageRePwd) {
            messageElement.text("비밀번호가 맞지 않습니다.");
            messageElement.css('color', 'red');
        } else {
            messageElement.text("비밀번호가 일치합니다.");
            messageElement.css('color', 'green');
        }
    }
});
/*회원탈퇴*/
$('#deleteBtn').click(function () {
    $.ajax({
        type: 'POST',
        url: './user/delete.do',
        data: {
            id: $('#myPageId').val(),
        },
        success: function (response) {
            if (response.trim() == 'success') {
                alert("회원탈퇴가 완료되었습니다.")
                location.href = './index.do';
            }else if(response.trim() == 'fail') {
                alert("회원탈퇴에 실패했습니다. 다시 시도해 주세요.");
            }

        },error: function (xhr, status, error) {
            console.error('AJAX 요청 실패: ', error);
            console.error('상태: ', status);
            console.dir(xhr);
        }

    });
});
