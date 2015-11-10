package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.FaqVO;
import com.custom.dao.NoticeDAO;
import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class Faq_InsertOkModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String f_title=req.getParameter("f_title");
		String f_content=req.getParameter("f_content");
		FaqVO fvo=new FaqVO();
		fvo.setF_title(f_title);
		fvo.setF_content(f_content);
		
		NoticeDAO.faqInsert(fvo);

		return "faq.do";
	}

}
