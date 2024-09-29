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
<link rel="stylesheet" href="../css/boardUpdate.css">
</head>

<body>
   <div class="wrap">
     <div class="header">
        <jsp:include page="../main/header.jsp" />
     </div>
     <div class="container">
        <h1 style="margin-bottom: 10px;"> running 게시글 수정</h1>
         <hr style="border: none; border-top: 1px  solid #050099; margin-top: 5px;">
         <form id="boardUpdateForm" >
            <input type="hidden" id="seq" value="${boardDTO.seq }" />
            <input type="hidden" id="pg" value="${pg }" />
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
                  <td colspan="2" align="center"> 
                     <div style= "width: 1100px; margin-top: 5px;">
                           <input type="button" value="다시작성" id="reset"> <!-- 버튼 위치수정 -->
                           <input type="button" value="작성완료" id="boardUpdateBtn"> 
                           <!-- <input type="reset" value="다시작성"> </td>--> <!--잠깐숨기기-->
                     </div>
                  </td>
               </tr>
            </table>
         </form>
     </div>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
   $("#boardUpdateBtn").click(function(){
       $('#subjectDiv').empty(); 
      $('#contentDiv').empty();
          if($('#subject').val() == '')
              $('#subjectDiv').html('제목 입력');
          else if($('#content').val() == '')
              $('#contentDiv').html('내용 입력');
          //else if($('#pwd').val().trim() != $('#repwd').val())
            //  $('#repwdDiv').html('비밀번호가 맞지 않습니다');/
          else
              $.ajax({
                  type: 'post',
                  url: '/ERunJRun/board/boardUpdate.do',
                  data:{
                     'seq': $('#seq').val(),
                     'subject':$('#subject').val(), 
                     'content':$('#content').val()
                  },
                  success: function(){
                      alert('글 수정 완료');
                      location.href = "/ERunJRun/board/boardMain.do?pg=" +$('#pg').val();
                  },
                  error: function(e){
                      console.log(e);
                  }
              });
      
   });
   </script>
   
     <div class="footer text-left">
        <jsp:include page="../main/footer.jsp" />
     </div>
  </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script> -->
<script type="text/javascript" src="../js/index.js"></script>
</body>
</html>
     
