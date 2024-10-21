package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.dao.BoardDAO;
import member.bean.MemberDTO;

public class BoardWriteService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String subject = request.getParameter("subject");
		String content = request.getParameter("content"); //수정은 seq를 가지고 온다. 

		 HttpSession session = request.getSession();
		    MemberDTO memberDTO = (MemberDTO) session.getAttribute("memberDTO");
		    
		    // 세션에서 memberDTO가 null인지 체크합니다.
		    if (memberDTO == null) {
		        // 로그인하지 않았을 경우, 로그인을 요구하거나 에러 처리를 합니다.
		        response.sendRedirect("/loginForm.do");
		        return null;
		    }

		    String email = (String) session.getAttribute("memberEmail");
		/*
		 * HttpSession session = request.getSession(); request.setAttribute("memberDTO",
		 * memberDTO);
		 * 
		 * MemberDTO memberDTO = (MemberDTO) session.getAttribute("memberDTO"); String
		 * email = (String) session.getAttribute("memberEmail");
		 */
		
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setId(memberDTO.getId());  // 반드시 id 값을 넣어주세요
		boardDTO.setEmail(email);
		boardDTO.setSubject(subject);
		boardDTO.setContent(content);

		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.boardWrite(boardDTO);
	
		
		
		//System.out.println(test);
		return "none";
	}

}
