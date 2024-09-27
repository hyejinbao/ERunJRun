<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ERun JRun</title>
<!-- 외부 폰트와 스타일시트, 그리고 부트스트랩을 통해 CSS 프레임워크를 불러옵니다. -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/boardView.css">
<link rel="stylesheet" href="../css/member.css">
<link rel="stylesheet" href="../css/imageWrite.css">
</head>

<body>
	<div class="wrap">
		<div class="header">
			<jsp:include page="../main/header.jsp" />
		</div>
		<div class="container">
			<div id="section" class="boardViewDiv">
				<form id="boardViewForm">
					<input type="hidden" id="memId" value="${sessionScope.memId }" />
					<input type="hidden" name="seq" id="seq" value="${boardDTO.seq }" />
					<input type="hidden" name="pg" id="pg" value="${requestScope.pg }" />

					<table>
						<tr>
							<td colspan="3">제목TEST${boardDTO.subject }</td>
						</tr>
						<tr>
							<td>글번호TEST: ${boardDTO.seq }</td>
							<td>작성자TEST: <span id="id">${boardDTO.id }</span></td>
							<td>조회수TEST: ${boardDTO.hit }</td>
						</tr>
						<tr>
						
							<td height="800" colspan="3" valign="top"> <!-- 뷰게시판 상세 내용 높이수정_240926 -->
								<div style="width: 100%; height: 100%; overflow: auto;">
									<!--<pre style="white-space: pre-line; word-break: break-all;">-->
									<pre style="white-space: pre-wrap; word-wrap: break-word; word-break: break-all;">
									<pre>게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST 게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST
									게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST게시판 내용 테스트입니다. 내용테스트 TEST 글 길이 TEST</pre>
									</pre><!--<pre>${boardDTO.content }</pre>-->
								</div>
							</td>
						</tr>
					</table>

					<div style="text-align: center;">

						<div class="btn-group">
							<input type="button" value="목록"
								onclick="location.href='/projectMVC/board/boardList.do?pg=${pg}'">

							<input type="button" value="수정" id="boardUpdateFormBtn">
							<input type="button" value="삭제" id="boardDeleteBtn">
						</div>

					</div>
				</form>
			</div>

		</div>
		<!-- 스크립트 추가 -->
		<script>
			function boardPaging(pg) {
				location.href = "/projectMVC/board/boardList.do?pg=" + pg;
			}
		</script>

		<!-- 회원가입 모달 -->
		<div class="modal fade" id="signupModal" tabindex="-1"
			aria-labelledby="signupModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="signupModalLabel">회원가입</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form id="signupForm">
							<div class="mb-3">
								<label for="username" class="form-label">사용자 이름</label> <input
									type="text" class="form-control" id="username" required>
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">이메일 주소</label> <input
									type="email" class="form-control" id="email" required>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">비밀번호</label> <input
									type="password" class="form-control" id="password" required>
							</div>
							<button type="submit" class="btn btn-primary">가입하기</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<div class="footer text-left">
		<jsp:include page="../main/footer.jsp" />
	</div>
	</div>
	</div>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
</body>
</html>