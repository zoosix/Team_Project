package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.dao.MeetingDTO;
import com.member.dao.MemberDAO;

public class DetailSearchModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String m_location;
		m_location = req.getParameter("slocation");
		System.out.println(m_location);
		
		String m_lang1;
		m_lang1 = req.getParameter("slang");
		System.out.println(m_lang1);
		
		String m_place;
		m_place = req.getParameter("splace");
		System.out.println(m_place);
		
		MeetingDTO d = new MeetingDTO();
		d.setM_location(m_place);
		d.setM_place(m_location);
		d.setM_lang1(m_lang1);
		
		List<MeetingDTO> list=MemberDAO.DetailSearchForPlace(d);
		int count = MemberDAO.DetailSearchForPlaceCount(d);
		req.setAttribute("count", count);
		req.setAttribute("list", list);
		req.setAttribute("jsp", "../meeting/meeting_place.jsp");
		return "main/main.jsp";
	}
}
