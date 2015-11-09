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
          String result=null;
      	HttpSession session = req.getSession();
		String email = (String)session.getAttribute("email");
           if(email==null){
        	 result="noid";
           }
           else{
      	System.out.println("mno,email=="+mno+email );

      	  WishDTO d= new WishDTO();
           d.setW_email(email);
           d.setW_mno(Integer.parseInt(mno));
           int count=MeetingDAO.wishCount(d);
           System.out.println("count:"+count);
           if(count==0){
        	   MeetingDAO.meetingWish(d);
        	   MeetingDAO.meetingWishAdd(Integer.parseInt(mno));
        	   System.out.println("count0:"+d.getW_email());
                result="ok";
           }else{ result="no";
           System.out.println("count-:"+d.getW_email());
              MeetingDAO.mywishDel(d);
              MeetingDAO.meetingWishMinus(Integer.parseInt(mno));
           }
           }
           System.out.println("re="+result);
           req.setAttribute("result", result);
		
		return "main/meeting_zzim.jsp";
	}

}
