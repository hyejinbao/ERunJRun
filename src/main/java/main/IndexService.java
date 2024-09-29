package main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import member.bean.MemberDTO;

public class IndexService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session = request.getSession();
		if(session.getAttribute("memberDTO") != null) {
			MemberDTO memberDTO = (MemberDTO)session.getAttribute("memberDTO");
			if (memberDTO.getAdmin() == 1) {
				return "/admin/main.jsp";
			}
		}
		return "/index.jsp";
	}
}
