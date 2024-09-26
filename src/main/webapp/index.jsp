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
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" href="./css/member.css">
<link rel="stylesheet" href="./css/imageWrite.css">

</head>
<body>
	<div class="wrap">
	  <div class="header">
	  	<jsp:include page="./main/header.jsp" />
	  </div>
	  <div class="container">
	      <!-- 동영상과 모집 섹션을 나란히 배치, 동영상 크기 확대 -->
	      <div class="row align-items-center mb-3">
	          <div class="col-md-12">
	              <video class="hero-video w-100" autoplay muted loop />
	                  <source src="./video/run.mp4" type="video/mp4">
	                  Your browser does not support the video tag.
	              </video>
	          </div>
	      </div>
	      
	      <div id="crewBtn">
			  <input type="button" value="크루 모집">
		      <input type="button" value="오운완실패">
	      </div>
	      
	      <!-- 카드 섹션 -->
	      <section class="content d-flex flex-wrap justify-content-center mb-5 card-section">
	          <div class="card mx-2">
	              <img src="./image/cadence.jpg" class="card-img-top" alt="Cadence">
	              <div class="card-body">
	                  <p class="card-text">케이던스(Cadence)란? 케이던스는 달리기를 할때 관절이나 무릎의 건강을 위해 신경써야 하는 부분입니다. 꼭 늘리세요!</p>
	              </div>
	          </div>
	
	          <div class="card mx-2" style="width: 18rem;">
	              <img src="./image/speed.jpg" class="card-img-top" alt="Speed">
	              <div class="card-body">
	                  <p class="card-text">빨리 달리는 것이 정답일까? 달리기를 빨리 한다고해서 좋은것도 나쁜것도 아닙니다. 각각의 장점들이 숨어있으니 알아가며 달리기를 즐겨보자!</p>
	              </div>
	          </div>
	
	          <div class="card mx-2">
	              <img src="./image/my.jpg" class="card-img-top" alt="My">
	              <div class="card-body">
	                  <p class="card-text">런닝기록을 저장 하면서 달려봐요! 런닝을 기록해두면 런닝을 더 하고싶어져요. 실제 저의 기록입니다.</p>
	              </div>
	          </div>
	
	          <div class="card mx-2">
	              <img src="./image/treadmill.jpg" class="card-img-top" alt="Treadmill">
	              <div class="card-body">
	                  <p class="card-text">런닝머신 보다 야외런닝을 추천하는 이유.. 가끔은 밖의 공기를 마시며 런닝을 뛰면 좋아요! 지루하지도 않아요.</p>
	              </div>
	          </div>
	      </section>
	      <hr>
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
		                        <label for="userid" class="form-label">아이디</label>
		                        <input type="text" class="form-control" id="userid" placeholder="아이디를 입력해주세요" required>
		                    </div>
		                    <div class="mb-3">
		                        <label for="password" class="form-label">비밀번호</label>
		                        <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해주세요" required>
		                    </div>
		                    <div class="mb-3">
		                        <label for="repassword" class="form-label">비밀번호확인</label>
		                        <input type="password" class="form-control" id="repassword" placeholder="비밀번호를 재입력해주세요" required>
		                    </div>
							<div class="mb-3">
								<label for="username" class="form-label">이름</label>
								<input type="text" class="form-control" id="username" placeholder="본명을 입력해주세요" required>
							</div>
							<div class="mb-3">
								<td >
									<label for="email1" class="form-label">이메일</label>
										<div class="input-group mb-3">
									  	<input type="text" class="emailform1" id="email1" name="email1" required>
									  	@
									  	<input type="text" class="emailform2" oninput="emailChange()" onfocus="showDatalist()"
											 list="email2_list" id="email2" name="emai2">
										<input type="button" value="이메일 인증" id="emailBtn" class="emailform3">
										<datalist id="email2_list">
											<option value="직접입력">직접입력</option>
											<option value="naver.com"/>
											<option value="gmail.com"/>
											<option value="daum.net"/>
										</datalist>
										</div>
								</td>
							</div>
							<div class="mb-3">
								<label for="birth" class="form-label">생년월일</label>
								<input type="text" class="form-control" id="birth" placeholder="yyyyMMdd" required>
							</div>
							<div class="mb-3">
							    <label class="form-label">성별</label>
									<div>
										<input type="radio" class="genderform" id="gender1" name="gender" value="1" checked/>남자
										<input type="radio" class="genderform" id="gender2" name="gender" value="2" />여자
									</div>
							</div>
							<div class="agree-check">
								<input type="checkbox" name="agreement" required /> 이용약관 개인정보 수집 및 이용, 마케팅 활용
								선택에 모두 동의합니다.
							</div>
							<div class="agreebtn"></div>
		                    <button type="submit" class="btn btn-primary">가입하기</button>
		                </form>
		            </div>
		        </div>
		    </div>
		</div>
	  <!--로그인 모달-->
		<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title" id="loginModalLabel">로그인</h5>
		                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body">
		                <form action="../jsp/login.jsp" method="post" class="form">
		                    <div class="mb-3 input-group">
		                        <i class="fas fa-envelope"></i>
		                        <input type="text" class="form-control" name="id" placeholder="ID" required>
		                    </div>
		                    <div class="mb-3 input-group">
		                        <i class="fas fa-lock"></i>
		                        <input type="password" class="form-control" name="password" placeholder="Password" required>
		                    </div>
		                    <button type="submit" class="btn btn-primary">로그인</button>
		                </form>
		                <div class="mt-3 text-center">
		                    <p>
		                        <span>New here?</span>
								<a href="#" data-bs-toggle="modal" data-bs-target="#signupModal">
									<b class="pointer" style="cursor: pointer; color: black;">Sign up here</b>
								</a>
		                    </p>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
	  <!--마이페이지 모달-->
		<div class="modal fade" id="myPageModal" tabindex="-1" aria-labelledby="myPageModalLabel" aria-hidden="true">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h5 class="modal-title" id="myPageModalLabel">마이페이지</h5>
				                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				            </div>
				            <div class="modal-body">
				                <form id="myPageForm">
				                    <div class="mb-3">
				                        <label for="myPageUserid" class="form-label">아이디</label>
				                        <input type="text" class="form-control" id="myPageUserid" placeholder="userId들어갈 곳" >
				                    </div>
				                    <div class="mb-3">
				                        <label for="myPagePassword" class="form-label">비밀번호</label>
				                        <input type="password" class="form-control" id="myPagePassword" placeholder="수정할 비밀번호" required>
				                    </div>
				                    <div class="mb-3">
				                        <label for="myPageRepassword" class="form-label">비밀번호확인</label>
				                        <input type="password" class="form-control" id="myPageRepassword" placeholder="수정할 비밀번호 확인" required>
				                    </div>
									<div class="mb-3">
										<label for="myPageUsername" class="form-label">이름</label>
										<input type="text" class="form-control" id="myPageUsername" placeholder="수정할 이름" required>
									</div>
									<div class="mb-3">
										<td >
											<label for="myPageEmail1" class="form-label">이메일</label>
												<div class="input-group mb-3">
											  	<input type="text" class="emailform1" id="myPageEmail1" name="myPageEmail1" required>
											  	@
											  	<input type="text" class="emailform2" oninput="emailChange()" onfocus="showDatalist()"
													 list="myPageEmail2_list" id="myPageEmail2" name="myPageEmail2">
												<input type="button" value="이메일 인증" id="myPageEmailBtn" class="emailform3">
												<datalist id="myPageEmail2_list">
													<option value="직접입력">직접입력</option>
													<option value="naver.com"/>
													<option value="gmail.com"/>
													<option value="daum.net"/>
												</datalist>
												</div>
										</td>
									</div>
									<div class="mb-3">
										<label for="birth" class="form-label">생년월일</label>
										<input type="text" class="form-control" id="myPageBirth" placeholder="birth들어갈곳" required>
									</div>
									<div class="mb-3">
									    <label class="form-label">성별</label>
											<div>
												<input type="radio" class="genderform" id="myPageGender1" name="myPageGender" value="1" checked/>남자
												<input type="radio" class="genderform" id="myPageGender2" name="myPageGender" value="2" />여자
											</div>
									</div>
									<div class="agree-check">
										<input type="checkbox" name="agreement" checked required /> 이용약관 개인정보 수집 및 이용, 마케팅 활용
										선택에 모두 동의합니다.
									</div>
									<div class="agreebtn"></div>
									<div class="myPageBtn">
										<button type="button" class="updateBtn btn-primary">수정하기</button>
										<button type="button" class="deleteBtn btn-primary">회원탈퇴</button>
									</div>
				                </form>
				            </div>
				        </div>
				    </div>
				</div>
		<!--이미지등록모달-->
		<div class="modal fade" id="imageWriteModal" tabindex="-1" aria-labelledby="imageWriteModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title" id="imageWriteModalLabel">이미지 업로드</h5>
		                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body">
		                <form action="../jsp/uploadImage.jsp" method="post" enctype="multipart/form-data" class="form">
		                        <label for="image1" class="form-label">업로드할 이미지 선택</label>
		                    <div class="imageWriteMb-3">
								<div class="image-upload-container">
									<img id="showing"/>
										<div class="camera">
											<svg width="50px" height="50px" viewBox="0 0 32 32" id="svg5" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
												<defs id="defs2"/>
													<g id="layer1" transform="translate(-108,-196)">
														<path d="m 121.89453,202.00586 c -0.92482,0 -1.77586,0.52633 -2.18945,1.35351 l -0.32227,0.64649 H 117 c -1.64501,0 -3,1.35499 -3,3 v 10 c 0,1.64501 1.35499,3 3,3 h 14 c 1.64501,0 3,-1.35499 3,-3 v -10 c 0,-1.64501 -1.35499,-3 -3,-3 h -2.38281 l -0.32227,-0.64649 c -0.41359,-0.82718 -1.26463,-1.35351 -2.18945,-1.35351 z m 0,2 h 4.21094 c 0.1715,0 0.32369,0.0947 0.40039,0.24805 l 0.59961,1.19921 A 1.0001,1.0001 0 0 0 128,206.00586 h 3 c 0.56413,0 1,0.43587 1,1 v 10 c 0,0.56413 -0.43587,1 -1,1 h -14 c -0.56413,0 -1,-0.43587 -1,-1 v -10 c 0,-0.56413 0.43587,-1 1,-1 h 3 a 1.0001,1.0001 0 0 0 0.89453,-0.55274 l 0.59961,-1.19921 c 0.0767,-0.1534 0.22889,-0.24805 0.40039,-0.24805 z" id="rect30394" style="color:#000000;fill:#000000;fill-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4.1;-inkscape-stroke:none"/>
														<path d="m 111,198.00586 a 1.0001,1.0001 0 0 0 -1,1 v 4 a 1,1 0 0 0 1,1 1,1 0 0 0 1,-1 v -3 h 3 a 1,1 0 0 0 1,-1 1,1 0 0 0 -1,-1 z" id="path30386" style="color:#000000;fill:#000000;fill-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4.1;-inkscape-stroke:none"/>
														<path d="m 111,220.00586 a 1,1 0 0 0 -1,1 v 4 a 1.0001,1.0001 0 0 0 1,1 h 4 a 1,1 0 0 0 1,-1 1,1 0 0 0 -1,-1 h -3 v -3 a 1,1 0 0 0 -1,-1 z" id="path30388" style="color:#000000;fill:#000000;fill-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4.1;-inkscape-stroke:none"/>
														<path d="m 133,198.00586 a 1,1 0 0 0 -1,1 1,1 0 0 0 1,1 h 3 v 3 a 1,1 0 0 0 1,1 1,1 0 0 0 1,-1 v -4 a 1.0001,1.0001 0 0 0 -1,-1 z" id="path30390" style="color:#000000;fill:#000000;fill-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4.1;-inkscape-stroke:none"/>
														<path d="m 137,220.00586 a 1,1 0 0 0 -1,1 v 3 h -3 a 1,1 0 0 0 -1,1 1,1 0 0 0 1,1 h 4 a 1.0001,1.0001 0 0 0 1,-1 v -4 a 1,1 0 0 0 -1,-1 z" id="path30392" style="color:#000000;fill:#000000;fill-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4.1;-inkscape-stroke:none"/>
														<path d="m 124,208.00586 c -2.19729,0 -4,1.80271 -4,4 0,2.19729 1.80271,4 4,4 2.19729,0 4,-1.80271 4,-4 0,-2.19729 -1.80271,-4 -4,-4 z m 0,2 c 1.11641,0 2,0.88359 2,2 0,1.11641 -0.88359,2 -2,2 -1.11641,0 -2,-0.88359 -2,-2 0,-1.11641 0.88359,-2 2,-2 z" id="path30410" style="color:#000000;fill:#000000;fill-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4.1;-inkscape-stroke:none"/>
														<path d="m 129,207.00631 a 1,1 0 0 0 -1,1 1,1 0 0 0 1,1 1,1 0 0 0 1,-1 1,1 0 0 0 -1,-1 z" id="path30412" style="color:#000000;fill:none;fill-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4.1;-inkscape-stroke:none"/>
													</g>
											</svg>
										</div>
									<input type="file" class="form-control" id="image1" name="image1" style="visibility: hidden" required>
								</div>
		                    </div>
		                    <div class="mb-3">
		                        <label for="imageDescription" class="form-label">이미지 설명</label>
		                        <textarea class="form-control" id="imageDescription" name="imageDescription" rows="3" placeholder="이미지에 대한 설명을 입력해주세요." required></textarea>
		                    </div>
		                    <button type="button" class="btn btn-primary">업로드</button>
		                </form>
		                <div class="mt-3 text-center">
		                    <p>
		                        <span>업로드 후 다른 작업을 원하신다면?</span>
		                        <a href="#" data-bs-toggle="modal" data-bs-target="#anotherModal">
		                            <b class="pointer" style="cursor: pointer; color: black;">다른 작업하기</b>
		                        </a>
		                    </p>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
	  <div class="footer text-left">
	  	<jsp:include page="./main/footer.jsp" />
	  </div>
  </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/index.js"></script>
</body>
</html>
