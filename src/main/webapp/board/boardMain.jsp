<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>ERun JRun</title>
	<!-- 외부 폰트와 스타일시트, 그리고 부트스트랩을 통해 CSS 프레임워크를 불러옵니다. -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/index.css">
	<link rel="stylesheet" href="../css/member.css">
	<link rel="stylesheet" href="../css/imageWrite.css">
	<link rel="stylesheet" href="../css/boardMain.css">
</head>

<body>
	<div class="wrap">
		<div class="header">
			<jsp:include page="../main/header.jsp" />
		</div>
		<div class="container">
			<!--혜진 게시판 추가 -->
			<div id="wrap">
				<div id="container">
					<div id="header">
						<img alt="running" src="../image/runlist.png" width="100%" height="150"
							style="cursor: pointer; margin-bottom:30px;"><br>
						<h1 style="margin-bottom: 10px;"> running 게시판 전체</h1>
						<hr style="border: none; border-top: 1px  solid #050099; margin-top: 5px;">
					</div>
					<div id="section" class="boardListDiv">
						<div class="board-item">
							<div class="subject"><a href="#">제목테스트입니다 1</a></div>
							<div class="info">
								<span class="nickname">사용자test 1</span>
								<span class="date">2024-09-25</span>
								<span class="views">조회수: 1</span>
							</div>
						</div>
						<div class="board-item">
							<div class="subject"><a href="#">제목테스트입니다 2</a></div>
							<div class="info">
								<span class="nickname">사용자test 2</span>
								<span class="date">2024-09-25</span>
								<span class="views">조회수: 2</span>
							</div>
						</div>
						<!-- 더미 데이터 추가 -->
					</div>

					<div id="paging">
						<nav aria-label="Page navigation">
							<ul class="pagination justify-content-center" style="float: center;">
								<li class="page-item disabled">
									<a class="page-link" href="#" tabindex="-1">이전</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item">
									<a class="page-link" href="#">다음</a>
								</li>
							</ul>
							<div style="margin-top: 20px;">
							<input type="button" value="글쓰기" onclick="location.href='/projectMVC/board/boardList.do?pg=${pg}'">
								</div>
							</div>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<!-- 회원가입 모달 -->
	<div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="signupModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="signupModalLabel">회원가입</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="signupForm">
						<div class="mb-3">
							<label for="username" class="form-label">사용자 이름</label>
							<input type="text" class="form-control" id="username" required>
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">이메일 주소</label>
							<input type="email" class="form-control" id="email" required>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">비밀번호</label>
							<input type="password" class="form-control" id="password" required>
						</div>
						<button type="submit" class="btn btn-primary">가입하기</button>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div class="footer text-left" style="clear: both;">
		<hr>
		<p>&copy; 2024 Running Crew</p>
	</div>
	</div>

	<script>
		// 임의의 데이터를 생성하는 자바스크립트 함수
		const generateDummyData = () => {
			const boardListDiv = document.querySelector('.boardListDiv');
			let htmlContent = '';

			// 임의의 데이터 15개 생성
			for (let i = 1; i <= 15; i++) {
				const seq = i;
				const subject = `제목테스트입니다제목테스트입니다 ${i}`;
				const id = `사용자테스트 ${i}`;
				const logtime = new Date().toLocaleDateString();
				const hit = Math.floor(Math.random() * 100);

				htmlContent += `
		            <div class="board-item">
		                <div class="subject"><a href="#">${subject}</a></div>
		                <div class="info">
		                    <span class="nickname">${id}</span>
		                    <span class="date">${logtime}</span>
		                    <span class="views">조회수: ${hit}</span>
		                </div>
		            </div>
        		`;
			}

			boardListDiv.innerHTML = htmlContent;
		}

		// 페이지 로드 시 더미 데이터를 생성
		window.onload = generateDummyData;
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="../js/index.js"></script>
</body>
</html>