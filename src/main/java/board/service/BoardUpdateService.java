package board.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.dao.BoardDAO;

public class BoardUpdateService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		int seq = Integer.parseInt(request.getParameter("seq"));
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
	
	
		Map<String, Object> map = new HashMap<>();
		map.put("seq", seq);  //String으로 바꿔서 실어감 (int이기때문에 ) seq도 실어서 보내줘야함
		map.put("subject", subject);
		map.put("content", content);

		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.boardUpdate(map);
		

		return "none";
	
	}

}


//map.put("seq", seq+""); //String으로 바꿔서 실어감 (int이기때문에 ) seq도 실어서 보내줘야함