package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.FaqVO;
import com.custom.dao.NoticeDAO;
import com.custom.dao.NoticeDTO;

public class Faq_SearchModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		SimpleDateFormat sdf=
				new SimpleDateFormat("yyyy-MM-dd");
		String strPage=req.getParameter("page");
		if(strPage==null)
			strPage="1";
		int curpage=Integer.parseInt(strPage);
		int rowSize=10;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
	
		String word = req.getParameter("word");
		System.out.println(word);
		List<FaqVO> list=NoticeDAO.faq_searchListData(word);
		req.setAttribute("list", list);
		for(FaqVO d:list)
		{
			d.setDb_fday(sdf.format(d.getF_regdate()));
		}
		
		int totalpage=NoticeDAO.faq_searchTotalCount(word);
		req.setAttribute("today", sdf.format(new Date()));
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("list", list);
		req.setAttribute("curpage", curpage);
		
		req.setAttribute("jsp", "../custom_board/faq_search_board.jsp");
		return "main/main.jsp";
	}
}
