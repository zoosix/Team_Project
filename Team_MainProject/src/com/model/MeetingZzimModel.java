package com.model;
import java.io.File;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meeting.dao.MeetingDAO;
import com.meeting.dao.MeetingDTO;
import com.meeting.dao.WishDTO;

public class MeetingZzimModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
          String mno = req.getParameter("mno");
      	HttpSession session = req.getSession();
		String email = (String)session.getAttribute("email");

      	System.out.println("mno,email=="+mno+email );

      	  WishDTO d= new WishDTO();
           d.setW_email(email);
           d.setW_mno(Integer.parseInt(mno));
           
		MeetingDAO.meetingWish(d);
		return "main/meeting_zzim.jsp";
	}

}
