package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.dao.BoardDAO;

public class BoardUpdateFormService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		System.out.println(seq + ", " + pg );
		//넘어오는값 체크 리퀘스트 파라미터
	   
		BoardDAO boardDAO = BoardDAO.getInstance();
		BoardDTO boardDTO = boardDAO.getBoard(seq);
		
		request.setAttribute("pg", pg);
		request.setAttribute("boardDTO", boardDTO);
		
		//들고가야된다. 그페이지로 다시 올수 있다. 
		
		return "/board/boardUpdateForm.jsp";
	}

}
