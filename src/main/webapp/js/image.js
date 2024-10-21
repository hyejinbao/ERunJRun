//업로드 버튼 클릭시 이벤트
let selectedType = 1; // 기본값: 크루 모집

// 버튼 클릭 시 유형 변경 및 Ajax로 데이터 요청
function changeType(button) {
    selectedType = button.getAttribute('data-type'); // 클릭한 버튼의 data-type 값 가져오기
    
    // 버튼 스타일 변경
    const buttons = document.querySelectorAll('#crewBtn input[type="button"]');
    buttons.forEach(btn => {
        btn.classList.remove('btn-selected');
        btn.style.backgroundColor = ''; // 기본 색상으로 되돌리기
        btn.style.color = ''; 		   // 기본 색상으로 되돌리기
    });
    
    button.classList.add('btn-selected');
    button.style.backgroundColor = '#444444';
    button.style.color = '#ffffff';

    // Ajax로 서버에 요청하여 해당 유형의 이미지를 가져옴
    loadImages(selectedType, 1); // 페이지는 1로 초기화
}
function loadImages(imageType, page) {
    $.ajax({
        type: 'GET',
        url: './index.do', // 데이터를 가져올 URL
        data: { imageType: imageType, page: page },
        success: function(response) {
            $('#cardSection').html($(response).find('#cardSection').html()); // 새로운 카드 데이터로 갱신

            // 페이지네이션도 함께 갱신
            $('.pagination').html($(response).find('.pagination').html());
        },
        error: function(e) {
            console.log(e);
            alert('이미지 로드에 실패했습니다.');
        }
    });
}

$(document).ready(function() {
	const urlParams = new URLSearchParams(window.location.search);
    selectedType = urlParams.get('imageType') || 1; // imageType이 없으면 1로 기본 설정
    const currentPage = urlParams.get('page') || 1; // page가 없으면 1로 기본 설정

    changeType(document.querySelector(`#crewBtn input[data-type="${selectedType}"]`)); // 초기 로드 시 현재 선택된 유형 버튼 활성화
    loadImages(selectedType, currentPage); // 현재 선택된 유형과 페이지로 데이터 로드
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