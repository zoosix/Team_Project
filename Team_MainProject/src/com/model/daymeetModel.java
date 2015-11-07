package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.dao.MeetingDTO;
import com.member.dao.MemberDAO;

public class daymeetModel  implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
            req.setCharacterEncoding("UTF-8");
			String part = req.getParameter("daymeet");
			System.out.println("daymeet.jsp :"+part);
			List<MeetingDTO> flist=MemberDAO.daybydayMeetingData(part);
	        req.setAttribute("flist", flist);	
		  
			// 데이터값 들어갓나 확인
			for(MeetingDTO d:flist){
				System.out.println("data="+d.getM_title());
			}

		return "main/daymeet.jsp";
	}

}
