package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.dao.BoardDAO;

public class BoardViewService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// 데이터

		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));

		// DB

		BoardDAO boardDAO = BoardDAO.getInstance(); // 싱글톤 생성 db가서 딱 한사람의 글
		//조회수 카운팅
		boardDAO.hitUpdate(seq);
		BoardDTO boardDTO = boardDAO.getBoard(seq); // 이 seq dao로가고 mapper로 간다음에 다시 dao -> service
		
		request.setAttribute("pg", pg); // 들고 가줘야 한다. //boardveiw 서비스 -> 서블릿 ->뷰 jsp
		request.setAttribute("boardDTO", boardDTO); // 들고 가줘야 한다. -> boardview.jsp로 넘겨줌

		return "/board/boardView.jsp";
	}

}
