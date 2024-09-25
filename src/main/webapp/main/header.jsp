<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	   <h1>Running Crew</h1>
	   <div>
	     	<a href="#" data-bs-toggle="modal" data-bs-target="#signupModal">회원가입</a>
	     	
	       <div class="inline-block">
	         <div class="flex items-center h-4 flex-row">
	           <a class="text-[13px] font-bold text-gray-500 text-center" href="/users/loginPage/">
	             <div class="text-center flex justify-around">
	               <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" fill="gray"><path d="M7 14q-.825 0-1.412-.588Q5 12.825 5 12t.588-1.413Q6.175 10 7 10t1.412.587Q9 11.175 9 12q0 .825-.588 1.412Q7.825 14 7 14Zm0 4q-2.5 0-4.25-1.75T1 12q0-2.5 1.75-4.25T7 6q1.675 0 3.038.825Q11.4 7.65 12.2 9H21l3 3-4.5 4.5-2-1.5-2 1.5-2.125-1.5H12.2q-.8 1.35-2.162 2.175Q8.675 18 7 18Zm0-2q1.4 0 2.463-.85 1.062-.85 1.412-2.15H14l1.45 1.025L17.5 12.5l1.775 1.375L21.15 12l-1-1h-9.275q-.35-1.3-1.412-2.15Q8.4 8 7 8 5.35 8 4.175 9.175 3 10.35 3 12q0 1.65 1.175 2.825Q5.35 16 7 16Z"/></svg>
	             </div>  
	           </a>
	         </div>
	       </div>
	       
	   </div>
	   <div class="mr-2">
	     <div class="inline-block">
	       <div class="flex items-center h-4 flex-row">
	         <a class="text-[13px] font-bold text-gray-500 text-center" href="/mainPage/">
	           <div class="text-center flex justify-around">
	             <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24"><path d="M6 19h3v-6h6v6h3v-9l-6-4.5L6 10Zm-2 2V9l8-6 8 6v12h-7v-6h-2v6Zm8-8.75Z"/></svg>
	           </div>  
	         </a>
	       </div>
	     </div>
	   </div>
	 
	 	<div class="navbar_overlay"></div>
	
		<div class="navbar_burger">
		  <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
		    <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
		  </svg>
		</div>
		
		<div class="navbar_menu">
		  <a href="#">홈으로</a>
		  <a href="#">공지</a>
		  <a href="#">게시판</a>
		  <a href="#">오운완</a>
		  <div class="navbar_burger_back">
		    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
		      <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
		    </svg>
		  </div>
		</div>