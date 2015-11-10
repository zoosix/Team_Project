package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.dao.MeetingDAO;
import com.meeting.dao.MeetingDTO;
import com.member.dao.MemberDAO;

public class MeetingForTypeModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String lang;
		lang = req.getParameter("lang");
		System.out.println(lang);
		List<MeetingDTO> list=MemberDAO.MeetingType(lang);
		req.setAttribute("list", list);
	
		req.setAttribute("jsp", "../meeting/meeting_type.jsp");
		return "main/main.jsp";
	}

}
