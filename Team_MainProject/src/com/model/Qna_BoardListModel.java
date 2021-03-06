package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.custom.dao.NoticeDAO;
import com.custom.dao.NoticeDTO;
import com.custom.dao.QnaVO;

public class Qna_BoardListModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		String email = (String)session.getAttribute("email");
		String admin = (String)session.getAttribute("admin");
		System.out.println("email,admin:"+email+admin);
		SimpleDateFormat sdf=
				new SimpleDateFormat("yyyy-MM-dd");
		String strPage=req.getParameter("page");
		if(strPage==null)
			strPage="1";
		int curpage=Integer.parseInt(strPage);
		int rowSize=10;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		Map map=new HashMap();
		map.put("start", start); // #{start}
		map.put("end", end); // #{end}
		List<QnaVO> list=
				NoticeDAO.qna_boardListData(map);
		for(QnaVO d:list)
		{
			d.setDb_qday(sdf.format(d.getQ_regdate()));
		}
		int totalpage=NoticeDAO.qna_boardTotalPage();
		req.setAttribute("today", sdf.format(new Date()));
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("list", list);
		req.setAttribute("curpage", curpage);
		req.setAttribute("jsp", "../custom_board/qna_board.jsp");
		return "main/main.jsp";
	}
}
