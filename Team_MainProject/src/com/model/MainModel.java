package com.model;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meeting.dao.*;
import com.member.dao.MemberDAO;
import com.member.dao.gtableDTO;

public class MainModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		
		//List<gtableDTO> list=MemberDAO.gtableListData();
		List<MeetingDTO> list=MemberDAO.meetingTableListData();	
		List<MeetingDTO> list2=MeetingDAO.meetingTableListData2();	
		
		HttpSession session = req.getSession();
		String email = (String)session.getAttribute("email");
		if(email!=null){
			int m_count=MeetingDAO.mymeetingCount(email);
			session.setAttribute("m_count", m_count);
		}
		req.setAttribute("list", list);
		req.setAttribute("list2", list2);
		req.setAttribute("title", "자유 게시판");
		req.setAttribute("slide", "../main/slide.jsp");
		req.setAttribute("jsp", "../main/meeting_list.jsp");

		return "main/main.jsp";
	}

}
