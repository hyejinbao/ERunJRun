<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ERun JRun</title>
<!-- 외부 폰트와 스타일시트, 그리고 부트스트랩을 통해 CSS 프레임워크를 불러옵니다. -->
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap"
   rel="stylesheet">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
   crossorigin="anonymous">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/member.css">
<link rel="stylesheet" href="../css/boardView.css">
</head>

<body>
   <div class="wrap">
      <div class="header">
         <jsp:include page="../main/header.jsp" />
      </div>
      <div class="container">
          <jsp:include page="../main/modal.jsp" />
         <div id="section" class="boardViewDiv">
            <form id="boardViewForm">
               <input type="hidden" id="memberDTO" value="${sessionScope.memberDTO }" />
               <!-- 오혜진 수정 -->
               <input type="hidden" name="seq" id="seq" value="${boardDTO.seq }" />
               <input type="hidden" name="pg" id="pg" value="${requestScope.pg }" />

               <table>
                  <tr>
                     <td colspan="3">${boardDTO.subject }</td>
                  </tr>
                  <tr>
                     <td width="200">글번호 : ${boardDTO.seq }</td>
                     <td width="200">작성자 : <span id="id">${boardDTO.id }</span></td>
                     <td width="200">조회수 : ${boardDTO.hit }</td>

                  </tr>
                  <tr>

                     <td height="800" colspan="3" valign="top">
                        <!-- 뷰게시판 상세 내용 높이수정_240926 -->
                        <div style="width: 100%; height: 100%; overflow: auto;">
                           <!--<pre style="white-space: pre-line; word-break: break-all;">-->
                           <pre style="white-space: pre-wrap; word-wrap: break-word; word-break: break-all;">${boardDTO.content }</pre>
                        </div>
                     </td>
                  </tr>
               </table>

               <div style="text-align: center;">
                  <div class="btn-group">
                     <input type="button" value="목록" onclick="location.href='./boardMain.do?pg=${pg}'"
                        style="display: inline-block;"> 
                  <span id="boardViewSpan"> 
                        <input type="button" value="수정" id="boardUpdateBtn" style="display: inline-block;"> 
                        <input type="button" value="삭제" id="boardDeleteBtn" style="display: inline-block;">
                     </span> 
                  </div>
               </div>
            </form>
         </div>

      </div>
   </div>
   <div class="footer text-left">
      <jsp:include page="../main/footer.jsp" />
   </div>
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
   <script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
   <script type="text/javascript" src="../js/index.js"></script>
   <script type="text/javascript" src="../js/member.js"></script>
   <script type="text/javascript" src="../js/boardView.js"></script>
</body>
</html>