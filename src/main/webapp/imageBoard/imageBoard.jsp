<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ERun JRun</title>
<!-- 외부 폰트와 스타일시트, 그리고 부트스트랩을 통해 CSS 프레임워크를 불러옵니다. -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/member.css">
<link rel="stylesheet" href="../css/imageWrite.css">
<link rel="stylesheet" href="../css/imageBoard.css">
</head>
<body>
	<div class="wrap">
	  <div class="header">
	  	<jsp:include page="../main/header.jsp" />
	  </div>

	  <div class="container">
 		  <jsp:include page="../main/modal.jsp" />
	  	  <div class="board-header">
			  <h1>오운완</h1>
	  	  </div>

	      <!-- 카드 섹션 -->
			<section class="content d-flex flex-wrap justify-content-center mb-5 card-section">
			    <div class="row row-cols-1 row-cols-md-3 g-4" id="cardSection">
					<c:forEach var="imageDTO" items="${imageList}">
					    <div class="col">
					        <div class="card mx-2">
					            <img src="../storage/${imageDTO.image}"  class="card-img-top" alt="${imageDTO.content}">
					            <div class="card-body">
					                <p class="card-text">${imageDTO.content}</p>
					            </div>
					        </div>
					    </div>
					</c:forEach>
			    </div>
			</section>
	      <hr>
	  </div>
	  
	  <div class="pagination">
		    <c:if test="${currentPage > 1}">
		        <a href="?page=${currentPage - 1}&imageType=${param.imageType}">이전</a>
		    </c:if>

		    <c:forEach begin="1" end="${totalPages}" var="i">
		        <c:choose>
		            <c:when test="${i == currentPage}">
		                <strong>${i}</strong>
		            </c:when>
		            <c:otherwise>
		                <a href="?page=${i}&imageType=${param.imageType}">${i}</a>
		            </c:otherwise>
		        </c:choose>
		    </c:forEach>

		    <c:if test="${currentPage < totalPages}">
		        <a href="?page=${currentPage + 1}&imageType=${param.imageType}">다음</a>
		    </c:if>
	  </div>

	  <div class="footer text-left">
	  	<jsp:include page="../main/footer.jsp" />
	  </div>
  </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
</body>
</html>
