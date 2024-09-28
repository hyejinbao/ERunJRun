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
<link rel="stylesheet" href="../css/boardWrite.css">
	
</head>

<body>
	<div class="wrap">
		<div class="header">
		<jsp:include page="../main/header.jsp" />
		</div>
		<div class="container">
			<h1 style="margin-bottom: 10px;"> running 게시글 등록</h1>
			
		<div id="section">
					<hr style="border: none; border-top: 1px  solid #050099; margin-top: 5px;">
				
			<form id="boardWriteForm">
				<table border="1">
					<tr>
						<th width="100">제목</th>
						<td><input type="text" id="subject" name="subject" size="70"
							placeholder="제목 입력">
							<div id="subjectDiv"></div></td>
					</tr>
					<tr>
			
						<th>내용</th>
						
						<td><textarea id="content" name="content" rows="20" cols="70"
								placeholder="내용 입력"></textarea>
							<div id="contentDiv"></div></td>
						
					</tr>
	
					<tr>
					<div style= "width: 800px; margin-top: 5px;">
						<td colspan="2" align="center"><input type="button"
							value="글쓰기" id="boardWriteBtn"> 
							<!--
							<input type="reset" value="다시작성"></td>--> <!--잠깐숨기기-->
						
					</div>
					</tr>
						
				</table>
			</form>
			</div>
			</div>
		<div class="footer text-left">
			<hr>
			<p>&copy; 2024 Running Crew</p>
		</div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../js/boardWrite.js"></script>

</body>
</html>