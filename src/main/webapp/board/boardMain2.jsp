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
			<div id="container">
				<div id="header">
					<img alt="running" src="../image/runlist.png" width="100%" height="150"
						style="cursor: pointer; margin-bottom:30px;"><br>
					<h1 style="margin-bottom: 10px;"> running 게시판 전체</h1>
					<hr style="border: none; border-top: 1px solid #050099; margin-top: 5px;">
				</div>

				<div id="section" class="boardListDiv">
					<!-- 기존의 테이블 구조를 대체 -->
					<c:if test="${requestScope.list != null }">
						<c:forEach var="boardDTO" items="${list }">
							<div class="board-item">
								<div class="subject"><a href="#">${boardDTO.subject }</a></div>
								<div class="info">
									<span class="nickname">${boardDTO.id }</span>
									<span class="date">
										<fmt:formatDate pattern="yyyy.MM.dd" value="${boardDTO.logtime }"/>
									</span>
									<span class="views">조회수: ${boardDTO.hit }</span>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>

				<div style="text-align: center; width: 700px; margin-top: 15px;">
					${boardPaging.pagingHTML }
				</div>

				<div style="margin-top: 20px;">
					<input type="button" value="글쓰기" onclick="location.href='/ERunJRun/board/boardWriteForm.do'">
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

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="../js/index.js"></script>
	<script type="text/javascript" src="../js/boardMain.js"></script>
</body>
</html>