package com.model;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.dao.MeetingDTO;
import com.member.dao.MemberDAO;
import com.member.dao.gtableDTO;

public class MainModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String strdate = sdf.format(date);

		//List<gtableDTO> list=MemberDAO.gtableListData();
		List<MeetingDTO> list=MemberDAO.meetingTableListData();	
			String partDate = req.getParameter("daymeet");
			if(partDate==null) partDate=strdate;
			List<MeetingDTO> dlist=MemberDAO.daybydayMeetingData(partDate);
	        req.setAttribute("dlist", dlist);	
	        System.out.println(partDate);

			req.setAttribute("partDate", partDate);
		req.setAttribute("list", list);
		req.setAttribute("title", "자유 게시판");
		req.setAttribute("jsp", "../main/meeting_list.jsp");
		req.setAttribute("slide", "../main/slide.jsp");

		return "main/main.jsp";
	}

}
