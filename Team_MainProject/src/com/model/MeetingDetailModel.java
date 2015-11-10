package com.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meeting.dao.*;
public class MeetingDetailModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String strNo=req.getParameter("no");
		String strPage=req.getParameter("page");

		System.out.println(strNo);
		System.out.println(strPage);
		
		MeetingDTO d=MeetingDAO.meetingDetail(Integer.parseInt(strNo));
		req.setAttribute("d", d);
		String img="/Team_MainProject/SE2/multiupload/"+d.getM_filename();
		System.out.println("파일 이름 : "+img);
		req.setAttribute("total", d.getM_lang1num()+d.getM_lang2num());
		req.setAttribute("img", img);
		req.setAttribute("jsp", "../meeting/meeting_detail.jsp");
		return "main/main.jsp";
	}

}
