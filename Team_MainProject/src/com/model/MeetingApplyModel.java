package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.dao.*;
import com.member.dao.*;

public class MeetingApplyModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String email=req.getParameter("email");
		String no=req.getParameter("no");
		System.out.println("email="+email);
		System.out.println("no="+no);
		
		MemberDTO md=MemberDAO.meetingMemberData(email);
		
		MeetingMemberDTO mmd=new MeetingMemberDTO();
		mmd.setMm_mno(Integer.parseInt(no));
		mmd.setMm_email(email);
		mmd.setMm_nickname(md.getNickname());
		mmd.setMm_lang(md.getLang());
		mmd.setMm_sex(md.getSex());
		
		MeetingDAO.meetingApply(mmd);
		
		req.setAttribute("no", no);
		return "meeting/meeting_apply.jsp";
	}

}
