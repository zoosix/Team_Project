package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.NoticeDAO;

public class FaqDeleteModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String fno=req.getParameter("no");
		NoticeDAO dao = new NoticeDAO();
		dao.faq_delete(Integer.parseInt(fno));
		return "faq.do";
	}
}
