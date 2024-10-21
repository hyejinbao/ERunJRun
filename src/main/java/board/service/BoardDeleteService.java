package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.dao.BoardDAO;

public class BoardDeleteService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		int seq = Integer.parseInt(request.getParameter("seq"));

		BoardDAO boardDAO = BoardDAO.getInstance(); // 싱글톤 생성 db가서 딱 한사람의
		boardDAO.boardDelete(seq); // 이 seq dao로가고 mapper로 간다음에 다시 dao -> service

		return "none";
	}

}
