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
		 		<jsp:include page="../main/modal.jsp" />
				<div id="header">
					<img alt="running" src="../image/runlist.png" width="100%" height="150"
						style="cursor: pointer; margin-bottom:30px;"><br>
					<h1 style="margin-bottom: 10px;"> running 게시판 전체</h1>
<!-- 					<hr style="border: none; border-top: 1px solid #050099; margin-top: 5px;"> -->
				</div>
				<div id="section" class="boardListDiv">
					<c:if test="${requestScope.list != null }">
						<c:forEach var="boardDTO" items="${list }">
							<div class="board-item">
								<input type="hidden" id="pg" value="${ pg }">
								<div class="seq">${ boardDTO.seq }</div>
								<div class="subjectA"><a href="#">${boardDTO.subject }</a></div>
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
				
				<div style="text-align: center; width: 700px; margin-top: 50px;">
					${boardPaging.pagingHTML }
				</div>

				<div style="margin-top: 20px;">
					<input type="button" id="boardWriteBtn" value="글쓰기" onclick="location.href='./boardWriteForm.do'">
				</div>
			</div>
		</div>
	</div>
	<div class="footer text-left" style="clear: both;">
		<hr>
		<p>&copy; 2024 Running Crew</p>
	</div>
	</div>

<script type="text/javascript">
function boardPaging(pg){
	location.href = "./board/boardMain.do?pg=" + pg;
}
</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
		<script type="text/javascript" src="../js/index.js"></script>
		<script type="text/javascript" src="../js/member.js"></script>
		<script type="text/javascript" src="../js/boardMain.js"></script>
	</body>
	</html>