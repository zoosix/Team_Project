package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.dao.MeetingDAO;
import com.meeting.dao.MeetingDTO;
import com.member.dao.MemberDAO;

public class MeetingForPlaceModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String place;
		place = req.getParameter("place");
		System.out.println(place);
		List<MeetingDTO> list=MemberDAO.MeetingTypePlace(place);
		int count = MemberDAO.MeetingTypePlaceCount(place);
		req.setAttribute("list", list);
		req.setAttribute("count", count);
		req.setAttribute("jsp", "../meeting/meeting_place.jsp");
		return "main/main.jsp";
	}

}
