package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import image.bean.ImageDTO;
import image.dao.ImageDAO;
import member.bean.MemberDTO;

public class IndexService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session = request.getSession();
	    int page = 1;
	    String pageParam = request.getParameter("page");
	    if (pageParam != null && !pageParam.isEmpty()) {
	        page = Integer.parseInt(pageParam);
	    }
	    
	    // imageType 가져오기
	    int imageType = 1; // 기본값 설정
	    String imageTypeParam = request.getParameter("imageType");
	    if (imageTypeParam != null && !imageTypeParam.isEmpty()) {
	        imageType = Integer.parseInt(imageTypeParam);
	    }

	    int pageSize = 6; // 한 페이지에 표시할 이미지 수
	    int startNum = (page - 1) * pageSize;

	    // 이미지 목록 가져오기
	    ImageDAO imageDAO = ImageDAO.getInstance();
	    List<ImageDTO> imageList = imageDAO.imageListByType(startNum, pageSize, imageType);

	    // 총 이미지 수
	    int totalImages = imageDAO.getTotalImagesByType(imageType); 
	    int totalPages = (int) Math.ceil((double) totalImages / pageSize);

	    // 데이터 바인딩
	    request.setAttribute("imageList", imageList);
	    request.setAttribute("currentPage", page);
	    request.setAttribute("totalPages", totalPages);
	    request.setAttribute("imageType", imageType);
		
		if(session.getAttribute("memberDTO") != null) {
			MemberDTO memberDTO = (MemberDTO)session.getAttribute("memberDTO");
			if (memberDTO.getAdmin() == 1) {
				return "/admin/main.jsp";
			}
		}
		return "/index.jsp";
	}
}
