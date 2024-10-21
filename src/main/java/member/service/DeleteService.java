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
        String pwd =request.getParameter("pwd");

        HttpSession session = request.getSession();
        MemberDTO memberDTO = (MemberDTO) session.getAttribute("memberDTO");
        System.out.println("memberDTO.getPwd():"+ memberDTO.getPwd());
        if(memberDTO != null && memberDTO.getPwd().equals(pwd)){

            MemberDAO memberDAO = MemberDAO.getInstance();
            boolean result = memberDAO.deleteMember(id);

            if(result) {
                response.getWriter().write("success");
                session.invalidate();
            }else {
                response.getWriter().write("fail");
            }

        }else {
            response.getWriter().write("fail");
        }
        return "none";
    }
}
