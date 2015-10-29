package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;

public class IdCheckModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String email = req.getParameter("email");
		int count = MemberDAO.memberIdCount(email);
		String result = "";
		
		if(count == 0)
		{
			result = "OK";
		}
		else
		{
			result = "NotOK";
		}
		
		req.setAttribute("result", result);
		return "member/idcheck.jsp";
	}
}
