package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.FaqVO;
import com.custom.dao.NoticeDAO;
import com.custom.dao.NoticeDTO;

public class Notice_InsertOkModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String n_title=req.getParameter("f_title");
		String n_content=req.getParameter("f_content");
		NoticeDTO ndto=new NoticeDTO();
		ndto.setN_Title(n_title);
		ndto.setN_Content(n_content);

		
		NoticeDAO.noticeInsert(ndto);

		return "notice.do";
	}

}
