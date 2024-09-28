<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<!--로그인 모달-->
				<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h5 class="modal-title" id="loginModalLabel">로그인</h5>
				                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				            </div>
				            <div class="modal-body">
				                <form class="form" id="loginForm" name="loginForm">
				                    <div class="mb-3 input-group">
				                        <i class="fas fa-envelope"></i>
				                        <input type="text" class="form-control" name="id"  placeholder="ID" required>
				                    </div>
				                    <div class="mb-3 input-group">
				                        <i class="fas fa-lock"></i>
				                        <input type="password" class="form-control" name="pwd" placeholder="Password" required>
				                    </div>
									<div align="center" id="loginCheckDiv" style="color: red;"></div>
				                    <input type="button" id="loginBtn" class="btn btn-primary" value="로그인">
				                </form>
				                <div class="mt-3 text-center">
				                    <p>
				                        <span>New here?</span>
										<a href="#" data-bs-toggle="modal" data-bs-target="#signUpModal">
											<b class="pointer" style="cursor: pointer; color: black;">Sign up here</b>
										</a>
				                    </p>
				                </div>
				            </div>
				        </div>
				    </div>
				</div>
		<!-- 회원가입 모달 -->
				<div class="modal fade" id="signUpModal" tabindex="-1" aria-labelledby="signupModalLabel" aria-hidden="true">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h5 class="modal-title" id="signupModalLabel">회원가입</h5>
				                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				            </div>
				            <div class="modal-body">
				                <form id="signUpForm" name="signUpForm">
				                    <div class="mb-3">
				                        <label for="id" class="form-label">아이디</label>
				                        <input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해주세요" required>
                                        <div id="idDiv" style="color: red;"></div>
				                    </div>
				                    <div class="mb-3">
				                        <label for="pwd" class="form-label">비밀번호</label>
				                        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력해주세요" required>
                                        <div id="pwdDiv" style="color: red;"></div>
				                    </div>
				                    <div class="mb-3">
				                        <label for="repwd" class="form-label">비밀번호확인</label>
				                        <input type="password" class="form-control" id="repwd" placeholder="비밀번호를 재입력해주세요" required>
                                        <div id="repwdDiv"></div>
				                    </div>
									<div class="mb-3">
										<label for="name" class="form-label">이름</label>
										<input type="text" class="form-control" id="name" name="name" placeholder="본명을 입력해주세요" required>
                                        <div id="nameDiv" style="color: red;"></div>
									</div>
									<div class="mb-3">
                                        <label for="email1" class="form-label">이메일</label>
                                            <div class="input-group mb-3">
                                            <input type="text" class="emailform1" id="email1" name="email1">
                                            @
                                            <input type="text" class="emailform2" oninput="emailChange()"
                                                 list="email2_list" id="email2" name="email2" autocomplete="off">
                                            <input type="button" value="이메일 인증" id="emailBtn" class="emailform3">
                                            <datalist id="email2_list">
                                                <option value="직접입력"></option>
                                                <option value="naver.com"/>
                                                <option value="gmail.com"/>
                                                <option value="daum.net"/>
                                            </datalist>
											<div id="emailDiv" style="color: red;"></div>
                                            </div>
									</div>
									<div class="mb-3">
										<label for="birth" class="form-label">생년월일</label>
										<input type="text" class="form-control" id="birth" name="birth" placeholder="yyyyMMdd" required>
									</div>
									<div class="mb-3">
									    <label class="form-label">성별</label>
											<div>
												<input type="radio" class="genderform" id="gender1" name="gender" value="1" checked/>남자
												<input type="radio" class="genderform" id="gender2" name="gender" value="2" />여자
											</div>
									</div>
									<div class="agree-check">
										<input type="checkbox" name="agreement" id="agreementCheckbox"/> 이용약관 개인정보 수집 및 이용, 마케팅 활용
										선택에 모두 동의합니다.
									</div>
									<div class="agreebtn"></div>
									<div id="agreementDiv" style="color: red;"></div>
                                    <div>
                                        <input type="button" value="가입하기" id="writeBtn" class="btn btn-primary">
                                    </div>
				                </form>
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
						                <form id="myPageForm" name="myPageForm">
						                    <div class="mb-3">
						                        <label for="myPageId" class="form-label">아이디</label>
						                        <input type="text" class="form-control" name="id" id="myPageId" value="${sessionScope.memberDTO.id}" readonly>
						                    </div>
						                    <div class="mb-3">
						                        <label for="myPagePwd" class="form-label">비밀번호</label>
						                        <input type="password" class="form-control" name="pwd" id="myPagePwd" placeholder="수정할 비밀번호를 입력해주세요">
												<div id="myPagePwdDiv"></div>
						                    </div>
						                    <div class="mb-3">
						                        <label for="myPageRePwd" class="form-label">비밀번호확인</label>
						                        <input type="password" class="form-control" name="repwd" id="myPageRePwd" placeholder="수정할 비밀번호를 재입력해주세요" >
												<div id="myPageRePwdDiv"></div>
						                    </div>
											<div class="mb-3">
												<label for="myPageName" class="form-label">이름</label>
												<input type="text" class="form-control" id="myPageName" name="name" value="${sessionScope.memberDTO.name}">
											</div>
											<div class="mb-3">
												<div class="mb-3">
													<label for="myPageEmail1" class="form-label">이메일</label>
														<div class="input-group mb-3">
														<input type="text" class="emailform1" id="myPageEmail1" name="email1" value="${sessionScope.memberDTO.email1}">
														@
														<input type="text" class="emailform2" oninput="emailChange()"
															 list="myPageEmail2_list" id="myPageEmail2" name="email2" value="${sessionScope.memberDTO.email2}" autocomplete="off">
														<input type="button" value="이메일 인증" id="myPageEmailBtn" class="emailform3">
														<datalist id="myPageEmail2_list">
															<option value="직접입력"></option>
															<option value="naver.com"/>
															<option value="gmail.com"/>
															<option value="daum.net"/>
														</datalist>
														<div id="myPageEmailDiv" style="color: red;"></div>
														</div>
												</div>
											</div>
											<div class="mb-3">
												<label for="birth" class="form-label">생년월일</label>
												<input type="text" class="form-control" id="myPageBirth" name="birth" value="${sessionScope.memberDTO.birth}">
											</div>
											<div class="mb-3">
											    <label class="form-label">성별</label>
													<div>
														<input type="radio" class="genderform" id="myPageGender1" name="myPageGender" value="1" />남자
														<input type="radio" class="genderform" id="myPageGender2" name="myPageGender" value="2" />여자
													</div>
											</div>
											<div class="agree-check">
												<input type="checkbox" name="agreement" id="agreement" checked required /> 이용약관 개인정보 수집 및 이용, 마케팅 활용
												선택에 모두 동의합니다.
											</div>
											<div class="agreebtn"></div>
											<div id="agreeDiv"></div>
											<div class="myPageBtn">
												<button type="button" id="updateBtn" class="updateBtn btn-primary">수정하기</button>
												<button type="button" id="deleteBtn" class="deleteBtn btn-primary">회원탈퇴</button>
											</div>
						                </form>
						            </div>
						        </div>
						    </div>
						</div>
<script type="text/javascript">
    window.onload = function () {
        const gender = ${sessionScope.memberDTO.gender !=null ? sessionScope.memberDTO.gender : 0}; // Java로부터 성별 값 가져오기
        if (gender === 1) {
            document.getElementById('myPageGender1').checked = true;
        } else if (gender === 2) {
            document.getElementById('myPageGender2').checked = true;
        }
    };
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/member.js"></script>
