package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MeetingDTO;
import com.member.dao.MemberDAO;

public class daymeetModel  implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {

			String part = req.getParameter("daymeet");
			System.out.println("daymeet.jsp :"+part);
			List<MeetingDTO> flist=MemberDAO.daybydayMeetingData(part);
	        req.setAttribute("flist", flist);	
			req.setAttribute("m_partDate", part);
			for(MeetingDTO d:flist){
				System.out.println("데이터"+d.getM_title());
			}

		return "main/daymeet.jsp";
	}

}
