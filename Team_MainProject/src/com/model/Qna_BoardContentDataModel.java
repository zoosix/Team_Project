package com.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.NoticeDAO;
import com.custom.dao.QnaVO;

public class Qna_BoardContentDataModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("ㅎㅇ1");
		SimpleDateFormat sdf=
				new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
				String strNo=req.getParameter("no");
				String strPage=req.getParameter("page");
				System.out.println("NO:"+strNo);
				System.out.println("page:"+strPage);
				//
				QnaVO list=NoticeDAO.qna_boardContentData(Integer.parseInt(strNo));
				list.setDb_qday(sdf.format(list.getQ_regdate()));
				System.out.println("list.title:"+list.getQ_title());
				//
				req.setAttribute("list",list);
				req.setAttribute("jsp", "../custom_board/qna_board_content.jsp");
				return "custom_board/custom_main.jsp";
	}

}
