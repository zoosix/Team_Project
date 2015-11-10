package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.NoticeDAO;
import com.custom.dao.NoticeDTO;

public class NoticeDeleteModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String nno=req.getParameter("no");
		NoticeDAO dao = new NoticeDAO();
		dao.notice_delete(Integer.parseInt(nno));
		return "notice.do";
	}
}
