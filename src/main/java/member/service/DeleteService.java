package member.service;

import com.control.CommandProcess;
import member.bean.MemberDTO;
import member.dao.MemberDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteService implements CommandProcess {
    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        String id = request.getParameter("id");
        MemberDAO memberDAO = MemberDAO.getInstance();
        boolean result = memberDAO.deleteMember(id);
        System.out.println("result: " + result);
        if(result) {
            response.getWriter().write("fail");
        }else {
            response.getWriter().write("success");
        }
        HttpSession session = request.getSession();
        session.invalidate();
        return "none";
    }
}
