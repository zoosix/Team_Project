package com.model;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meeting.dao.MeetingDAO;
import com.meeting.dao.MeetingDTO;
import com.meeting.dao.WishDTO;
import com.member.dao.MemberDAO;
import com.member.dao.gtableDTO;

public class MyWishModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		String email = (String)session.getAttribute("email");

	
		int count=MeetingDAO.mywishCount(email);
		List<MeetingDTO> list=MeetingDAO.mywishList(email);
		
		req.setAttribute("count", count);
		req.setAttribute("list", list);

		
		req.setAttribute("jsp", "../mypage/wish.jsp");
		return "main/main.jsp";
	}
}