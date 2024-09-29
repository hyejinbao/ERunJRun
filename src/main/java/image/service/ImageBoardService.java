package image.service;

import com.control.CommandProcess;
import image.bean.ImageDTO;
import image.dao.ImageDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class ImageBoardService implements CommandProcess {
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
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

        int pageSize = 9; // 한 페이지에 표시할 이미지 수
        int startNum = (page - 1) * pageSize;

        // 이미지 목록 가져오기
        ImageDAO imageDAO = ImageDAO.getInstance();
        List<ImageDTO> imageList = imageDAO.imageListByType(startNum, pageSize, imageType); // 수정된 메서드 호출

        // 총 이미지 수
        int totalImages = imageDAO.getTotalImagesByType(imageType); // 수정된 메서드 호출
        int totalPages = (int) Math.ceil((double) totalImages / pageSize);

        // 데이터 바인딩
        request.setAttribute("imageList", imageList);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("imageType", imageType); // 추가된 부분

        return "/imageBoard/imageBoard.jsp";
    }
}
