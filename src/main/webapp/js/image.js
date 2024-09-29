//업로드 버튼 클릭시 이벤트
let selectedType = 0; // 현재 선택된 유형을 저장할 변수

  function changeType(button) {
      selectedType = button.getAttribute('data-type'); // imagetype 설정

      // 모든 버튼의 색상 초기화
      const buttons = document.querySelectorAll('#crewBtn input[type="button"]');
      buttons.forEach(btn => {
          btn.classList.remove('btn-selected');
          btn.style.backgroundColor = ''; // 기본 색상으로 되돌리기
      });

      // 클릭된 버튼의 색상 변경
      button.classList.add('btn-selected');
      button.style.backgroundColor = '#444444'; // 원하는 색상 (파란색 예시)
  }

$(document).ready(function() {
    $('#imageWriteBtn').click(function() {
        // 여기에서 선택된 imagetype을 사용
        let formData = new FormData($('#imageWriteForm')[0]);
        formData.append('imageType', selectedType); // imagetype 추가

        $.ajax({
            type: 'post',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            url: './image/imageWrite.do',
            data: formData,
            success: function() {
                alert('이미지 등록 완료');
                location.href = "./index.do";
            },
            error: function(e) {
                console.log(e);
                alert('이미지 업로드에 실패했습니다. 다시 시도해주세요.');
            }
        });
    });
});

//카메라 클릭 시 이미지 파일 이벤트
$('#camera').click(function(){
	$('#image1').trigger('click');	//강제 이벤트 발생
});

//선택한 이미지 확인
$('#image1').change(function(){
	readURL(this);
});

function readURL(input) {
	let reader = new FileReader();
	
	reader.onload = function(e) {
		$('#showImg').attr('src', e.target.result);		//e.target - 이벤트가 발생하는 요소를 반환해준다
	}
	
	reader.readAsDataURL(input.files[0]);
}