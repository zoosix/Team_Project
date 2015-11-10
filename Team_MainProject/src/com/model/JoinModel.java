package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class JoinModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("jsp", "../member/join.jsp");
		return "main/main.jsp";
	}
}
