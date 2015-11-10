package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.NoticeDAO;
import com.custom.dao.FaqVO;

public class Faq_BoardListModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {

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
		List<FaqVO> list=
				NoticeDAO.faq_boardListData(map);
		for(FaqVO d:list)
		{
			d.setDb_fday(sdf.format(d.getF_regdate()));
		}
		int totalpage=NoticeDAO.qna_boardTotalPage();
		req.setAttribute("today", sdf.format(new Date()));
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("list", list);
		req.setAttribute("curpage", curpage);
		req.setAttribute("jsp", "../custom_board/faq_board.jsp");
		return "custom_board/custom_main.jsp";
	}

}
