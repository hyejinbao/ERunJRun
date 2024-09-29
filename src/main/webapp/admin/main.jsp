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
		            <table>
		            	<tr>
		            		<td>회원아이디</td>
		            		<td>회원이름</td>
		            		<td>성별</td>
		            		<td><input type="button" value="승인"></td>
		            		<td><input type="button" value="거절"></td>
		            	</tr>
		            	<tr>
		            		<td>회원아이디</td>
		            		<td>회원이름</td>
		            		<td>성별</td>
		            		<td><input type="button" value="승인"></td>
		            		<td><input type="button" value="거절"></td>
		            	</tr>
		            	<tr>
		            		<td>회원아이디</td>
		            		<td>회원이름</td>
		            		<td>성별</td>
		            		<td><input type="button" value="승인"></td>
		            		<td><input type="button" value="거절"></td>
		            	</tr>
		            </table>
		        </div>
		        <div class="card">
		            <h3>공지사항 관리</h3>
		            <table>
		            	<tr>
		            		<td>타인 욕설/비방은 삼가합시다.</td>
		            	</tr>
		            </table>
		        </div>
		        <div class="card">
		            <h3>게시판 관리</h3>
		            <table>
		            	<tr>
		            		<td>운동화 사려는데 어디꺼가 좋나요</td>
		            	</tr>
		            	<tr>
		            		<td>같이 달리실분 계신가요</td>
		            	</tr>
		            	<tr>
		            		<td>서울에서 달리기 좋은 곳 있나요</td>
		            	</tr>
		            </table>
		        </div>
		        <div class="card">
		            <h3>회원정보 관리</h3>
		            <table>
		            	<tr>
		            		<td>회원아이디</td>
		            		<td>회원이름</td>
		            		<td>성별</td>
		            		<td>생일</td>
		            		<td>이메일</td>
		            	</tr>
		            	<tr>
		            		<td>회원아이디</td>
		            		<td>회원이름</td>
		            		<td>성별</td>
		            		<td>생일</td>
		            		<td>이메일</td>
		            	</tr>
		            	<tr>
		            		<td>회원아이디</td>
		            		<td>회원이름</td>
		            		<td>성별</td>
		            		<td>생일</td>
		            		<td>이메일</td>
		            	</tr>
		            </table>
		        </div>
		        <div class="card">
		            <h3>오운완 게시판</h3>
		            <table>
		            	<tr>
		            		<td>오늘도 5km 달렸습니다</td>
		            	</tr>
		            	<tr>
		            		<td>힘들어서 걷기만 했네요</td>
		            	</tr>
		            	<tr>
		            		<td>날이 좋아 한컷</td>
		            	</tr>
		            </table>
		        </div>
		        <div class="card">
		            <h3>크루관리 게시판</h3>
		            <table>
		            	<tr>
		            		<td>이런 저런 크루 모집</td>
		            	</tr>
		            	<tr>
		            		<td>달리다지침 크루 모집</td>
		            	</tr>
		            </table>
		        </div>
		    </div>
		</div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
</body>
</html>