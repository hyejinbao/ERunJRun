<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ERun JRun</title>
<!-- 외부 폰트와 스타일시트, 그리고 부트스트랩을 통해 CSS 프레임워크를 불러옵니다. -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="./css/admin.css">
</head>
<body>
	<div class="dashboard-container">
		<div class="dashheader">
			<h5 id="adminLogin"><svg id="svgUser" xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewBox="0 0 448 512">
				<path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512l388.6 0c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304l-91.4 0z"/>
			</svg> 관리자님</h5>
		</div>
		
		<div class="sidebar">
		    <h1>Running Crew</h1>
		    <ul>
		        <li>회원 관리</li>
		        <li>공지사항 관리</li>
		        <li>게시판 관리</li>
		        <li>오운완 관리</li>
		        <li>크루 관리</li>
		    </ul>
		</div>
		
		<div class="main-content">
			<div class="dashboard-top">
			    <h2>Dashboard</h2>
			    <button class="refresh-button" onclick="location.reload()">새로고침</button>
		    </div>
		    
		    <div class="card-container">
		        <div class="card">
		            <h3>미승인 회원</h3>
		            <p>유효한 이벤트: 0개<br>종료된 이벤트: 0개</p>
		        </div>
		        <div class="card">
		            <h3>CPU Top 5</h3>
		            <p>해당 정보가 없습니다.</p>
		        </div>
		        <div class="card">
		            <h3>Security Monitoring - IDS</h3>
		            <p>조회기간: 2024.09.20 ~ 2024.09.26</p>
		        </div>
		        <div class="card">
		            <h3>서비스 이용 내역</h3>
		            <p>파트너에게 문의해주세요</p>
		        </div>
		        <div class="card">
		            <h3>네트워크 이용 내역</h3>
		            <p>이용 내역: 0.176825 GB<br>이용 현황 그래프:</p>
		        </div>
		        <div class="card">
		            <h3>결제 정보</h3>
		            <p>파트너에게 문의해주세요</p>
		        </div>
		    </div>
		</div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
</body>
</html>