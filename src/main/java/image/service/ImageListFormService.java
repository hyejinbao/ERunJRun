package image.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import image.bean.ImageDTO;
import image.bean.ImagePaging;
import image.dao.ImageDAO;

public class ImageListFormService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		ImageDAO imageDAO = ImageDAO.getInstance();
		int page = 1;
		if(request.getParameter("page") != null) page = Integer.parseInt(request.getParameter("page"));
		int count = 3;
		int endNum = count;
	    int startNum = page*endNum-endNum;
	    int totalNum = imageDAO.getTotalNum();
	    
	    ImagePaging imagePaging = new ImagePaging();
	    imagePaging.setCurrentPage(page);
	    imagePaging.setPageBlock(5);
	    imagePaging.setPageSize(count);
	    imagePaging.setTotalA(totalNum);
	    
	    StringBuffer sb = imagePaging.makePagingHTML();
		
		List<ImageDTO> list = imageDAO.imageList(startNum, endNum);
	    
		request.setAttribute("list", list);
		request.setAttribute("paging", sb.toString());
		request.setAttribute("page", page);
		request.setAttribute("totalNum", totalNum);
		
		return "/imageBoard/imageListForm.jsp";
	}

}
