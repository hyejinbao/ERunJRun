package member.service;

import com.control.CommandProcess;
import member.dao.MemberDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckIdService implements CommandProcess {
    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        try {
            String id = request.getParameter("id");

            MemberDAO memberDAO = MemberDAO.getInstance();
            boolean exist = memberDAO.isExistId(id);
            System.out.println("ID exists: " + exist);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            String jsonResponse = "{\"exist\": " + exist + "}";
            System.out.println("JSON Response: " + jsonResponse);
            response.getWriter().write(jsonResponse);

        } catch (Exception e) {
            e.printStackTrace(); // 오류를 콘솔에 출력
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
        return null; // JSP로 포워딩하지 않음
    }
}
