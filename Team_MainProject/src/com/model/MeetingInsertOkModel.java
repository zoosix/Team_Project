package com.model;

import java.io.File;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.dao.MeetingDAO;
import com.meeting.dao.MeetingDTO;
import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MeetingInsertOkModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String path=req.getSession().getServletContext().getRealPath("/")+"SE2" + File.separator + "multiupload" + File.separator;
		
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
		
		String enctype="UTF-8";
		int size=1024*1024*10;
		MultipartRequest mr=new MultipartRequest(req,path,size,enctype,new DefaultFileRenamePolicy());
		
		String filename=mr.getOriginalFileName("upload");
		
		req.setCharacterEncoding("UTF-8");
		String m_lang1=mr.getParameter("lang1");
		String m_lang1num=mr.getParameter("lang1num");
		String m_lang2=mr.getParameter("lang2");
		String m_lang2num=mr.getParameter("lang2num");
		String m_title=mr.getParameter("title");
		String m_summary=mr.getParameter("summary");
		String m_content=mr.getParameter("content");
		String m_meetingDate1=mr.getParameter("meetingDate1");
		String m_meetingTime1=mr.getParameter("meetingTime1");
		String m_meetingDate2=mr.getParameter("meetingDate2");
		String m_meetingTime2=mr.getParameter("meetingTime2");
		String m_partDate1=mr.getParameter("partDate1");
		String m_partTime1=mr.getParameter("partTime1");
		String m_partDate2=mr.getParameter("partDate2");
		String m_partTime2=mr.getParameter("partTime2");
		String m_place=mr.getParameter("place");
		String m_location=mr.getParameter("location");
		String m_meetingDate=m_meetingDate1+" "+m_meetingTime1+" ~ "+m_meetingDate2+" "+m_meetingTime2;
		String m_partDate=m_partDate1+" "+m_partTime1+" ~ "+m_partDate2+" "+m_partTime2;
		String m_email=mr.getParameter("email");
		//String m_tel="aaaa";
		MemberDTO md=MemberDAO.meetingOpenerData(m_email);
		
		MeetingDTO d=new MeetingDTO();
		d.setM_lang1(m_lang1);
		d.setM_lang1num(Integer.parseInt(m_lang1num));
		d.setM_lang2(m_lang2);
		d.setM_lang2num(Integer.parseInt(m_lang2num));
		d.setM_title(m_title);
		d.setM_summary(m_summary);
		d.setM_content(m_content);
		d.setM_meetingDate1(m_meetingDate1);
		d.setM_partDate1(m_partDate1);
		d.setM_meetingDate2(m_meetingDate2);
		d.setM_partDate2(m_partDate2);
		d.setM_place(m_place);
		d.setM_location(m_location);
		d.setM_email(m_email);
		d.setM_tel(md.getTel());
		
		if(filename==null)
		{
			d.setM_filename("");
			d.setM_filesize(0);
		}
		else
		{
			d.setM_filename(filename);
			File file2=new File(path+"\\"+filename);
			
			
			d.setM_filesize((int)file2.length());
		}
		
		MeetingDAO.meetingInsert(d);
		return "main.do";
	}
	
}
