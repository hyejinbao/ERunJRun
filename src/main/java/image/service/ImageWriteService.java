package image.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import image.bean.ImageDTO;
import image.dao.ImageDAO;
import member.bean.MemberDTO;

import java.io.File;
import java.util.UUID;

public class ImageWriteService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//실제 폴더 위치 가져오기
		String realFolder = request.getServletContext().getRealPath("/storage");
		System.out.println("realFolder = " + realFolder);

		//업로드
		//request를 MultipartRequest가 관리
		//realFolder에다가 저장
		//업로드 속도 5mb로 저장
		//파일명 UTF-8로 저장
		//new DefaultFileRenamePolicy() - 똑같은 이름이 들어올 시 파일명을 변경해서 올린다
		//MultipartRequest multi = new MultipartRequest(request, realFolder, 5 * 1024 * 1024, "UTF-8");
		MultipartRequest multi = new MultipartRequest(request, realFolder, 5 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());

		HttpSession session = request.getSession();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("memberDTO");
		//데이터
		//MultipartRequest가 관리하기 때문에 request 대신 multi로 작성해야함
		String id = memberDTO.getId();
		String content = multi.getParameter("imageDescription");
		String image = multi.getOriginalFileName("image1");
		int imageType = Integer.parseInt(multi.getParameter("imageType"));

		System.out.println("id " + id);
		System.out.println("content " + content);
		System.out.println("image " + image);
		System.out.println("imageType " + imageType);

		String newFileName = UUID.randomUUID().toString() + getFileExtension(image);
		File oldFile = new File(realFolder, image);
		File newFile = new File(realFolder, newFileName);
		if (oldFile.exists()) {
			oldFile.renameTo(newFile); // 파일 이름 변경
		}

		ImageDTO imageDTO = new ImageDTO();
		imageDTO.setId(id);
		imageDTO.setContent(content);
		imageDTO.setImage(newFileName);
		imageDTO.setImageType(imageType);

		ImageDAO imageDAO = ImageDAO.getInstance();
		imageDAO.writeImage(imageDTO);

		return "none";
	}
	private String getFileExtension(String fileName) {
		if (fileName.lastIndexOf('.') > 0) {
			return fileName.substring(fileName.lastIndexOf('.')); // 확장자 리턴
		}
		return ""; // 확장자가 없으면 빈 문자열 리턴
	}
}
