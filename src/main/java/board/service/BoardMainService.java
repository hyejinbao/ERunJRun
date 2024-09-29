package board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.bean.BoardPaging;
import board.dao.BoardDAO;

public class BoardMainService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int pg = 1;
		if(request.getParameter("pg") != null) {
			pg = Integer.parseInt(request.getParameter("pg"));
		}

		//1페이지당 5개씩
		//int endNum = pg * 5;
		//int startNum = endNum - 4;
		
		//mysql
		int endNum = 15;// 글목록개수
		int startNum = pg*endNum - endNum;

		//DB
		BoardDAO boardDAO = BoardDAO.getInstance();
		List<BoardDTO> list = boardDAO.boardList(startNum, endNum);

		//페이징 처리
		int totalA = boardDAO.getTotalA();
		

		BoardPaging boardPaging = new BoardPaging();
		boardPaging.setCurrentPage(pg);
		boardPaging.setPageBlock(3);
		boardPaging.setPageSize(5);
		boardPaging.setTotalA(totalA);

		boardPaging.makePagingHTML();
		
		request.setAttribute("pg", pg);
		
		request.setAttribute("list", list); //화면에 준다. 
		request.setAttribute("boardPaging", boardPaging); //보드페이징도 들고 간다. 
		
		return "/board/boardMain.jsp";
	}
}
