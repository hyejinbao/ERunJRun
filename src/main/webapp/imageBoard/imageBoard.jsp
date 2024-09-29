<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
	<div class="wrap">
	  <div class="header">
	  	<jsp:include page="../main/header.jsp" />
	  </div>
	  
	  <div class="container">
	  	  <div class="board-header">
			  <h1>오운완</h1>
	  	  </div>
	      <!-- 카드 섹션 -->
			<section class="content d-flex flex-wrap justify-content-center mb-5 card-section">
			    <div class="row row-cols-1 row-cols-md-3 g-4">
			        <div class="col">
			            <div class="card mx-2">
			                <img src="../image/cadence.jpg" class="card-img-top" alt="Cadence">
			                <div class="card-body">
			                    <p class="card-text">케이던스(Cadence)란? 케이던스는 달리기를 할때 관절이나 무릎의 건강을 위해 신경써야 하는 부분입니다. 꼭 늘리세요!</p>
			                </div>
			            </div>
			        </div>
			        
			        <div class="col">
			            <div class="card mx-2">
			                <img src="../image/speed.jpg" class="card-img-top" alt="Speed">
			                <div class="card-body">
			                    <p class="card-text">빨리 달리는 것이 정답일까? 달리기를 빨리 한다고해서 좋은것도 나쁜것도 아닙니다. 각각의 장점들이 숨어있으니 알아가며 달리기를 즐겨보자!</p>
			                </div>
			            </div>
			        </div>
			        
			        <div class="col">
			            <div class="card mx-2">
			                <img src="../image/my.jpg" class="card-img-top" alt="My">
			                <div class="card-body">
			                    <p class="card-text">런닝기록을 저장 하면서 달려봐요! 런닝을 기록해두면 런닝을 더 하고싶어져요. 실제 저의 기록입니다.</p>
			                </div>
			            </div>
			        </div>
			        
			        <div class="col">
			            <div class="card mx-2">
			                <img src="../image/treadmill.jpg" class="card-img-top" alt="Treadmill">
			                <div class="card-body">
			                    <p class="card-text">런닝머신 보다 야외런닝을 추천하는 이유.. 가끔은 밖의 공기를 마시며 런닝을 뛰면 좋아요! 지루하지도 않아요.</p>
			                </div>
			            </div>
			        </div>
			        
			        <div class="col">
			            <div class="card mx-2">
			                <img src="../image/treadmill.jpg" class="card-img-top" alt="Treadmill">
			                <div class="card-body">
			                    <p class="card-text">런닝머신 보다 야외런닝을 추천하는 이유.. 가끔은 밖의 공기를 마시며 런닝을 뛰면 좋아요! 지루하지도 않아요.</p>
			                </div>
			            </div>
			        </div>
			    </div>
			</section>
	      <hr>
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
