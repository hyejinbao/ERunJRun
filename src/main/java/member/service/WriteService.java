package member.service;

import com.control.CommandProcess;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteService implements CommandProcess {
    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        String email1 = request.getParameter("email1");
        String email2 = request.getParameter("email2");
        String birth = request.getParameter("birth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setId(id);
        memberDTO.setName(name);
        memberDTO.setPwd(pwd);
        memberDTO.setEmail1(email1);
        memberDTO.setEmail2(email2);
        memberDTO.setBirth(birth);
        memberDTO.setGender(gender);

        MemberDAO memberDAO = MemberDAO.getInstance();
        memberDAO.memberWrite(memberDTO);
        return "none";
    }
}
