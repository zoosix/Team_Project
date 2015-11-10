package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.custom.dao.NoticeDAO;
import com.custom.dao.NoticeDTO;
import com.custom.dao.QnaVO;

public class Qna_InsertOkModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String q_title=req.getParameter("Q_title");
		String q_content=req.getParameter("Q_content");
		HttpSession session = req.getSession();
		String email = (String)session.getAttribute("email");
		QnaVO qvo = new QnaVO();
		qvo.setQ_title(q_title);
		qvo.setQ_content(q_content);
		qvo.setQ_mail(email);

		
		NoticeDAO.qnaInsert(qvo);

		return "qna.do";
	}

}
