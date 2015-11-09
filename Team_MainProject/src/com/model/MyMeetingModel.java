package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meeting.dao.MeetingDAO;
import com.meeting.dao.MeetingDTO;
import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class MyMeetingModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		String email = (String)session.getAttribute("email");
	
		List<MeetingDTO> list=MeetingDAO.mymeetingData(email);
		req.setAttribute("list", list);
        
		req.setAttribute("jsp", "../mypage/meeting.jsp");
		return "main/main.jsp";
	}
}