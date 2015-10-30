package com.model;

import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class MyModifyModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub	
		
		HttpSession session = req.getSession();
/*		String email = (String)session.getAttribute("email");
		String tel=(String)session.getAttribute("tel");
		 StringTokenizer st = new StringTokenizer(tel, "-");
		 req.setAttribute("tel1", st.nextToken());
		 req.setAttribute("tel2", st.nextToken());
		 req.setAttribute("tel3", st.nextToken());
		 
		 
		 */
		 MemberDTO d = MemberDAO.memberGetInfo(email);

		req.setAttribute("d", d);
		req.setAttribute("jsp", "../mypage/modify.jsp");
		return "main/main.jsp";
	}
}
