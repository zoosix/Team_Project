package com.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.*;
import com.sort.*;
import com.sort.dao.SortDAO;
import com.sort.dao.SortDTO;
public class LanguageListModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String m_Lang2=req.getParameter("m_Lang2");	
		List<SortDTO> list= new ArrayList<SortDTO>();
		int count = 0;
		if(m_Lang2==null)
		{
			list = SortDAO.languageListData();
			count = SortDAO.languageCount();
		} 
		else
		{
			list=SortDAO.languageListData(m_Lang2);
			count = SortDAO.languageCount(m_Lang2);
			req.setAttribute("m_Lang2", m_Lang2);
		}
		req.setAttribute("count", count);
		req.setAttribute("list", list);
		req.setAttribute("title", "¾ð¾îº°");
		req.setAttribute("jsp", "../sort/language.jsp");
		
		return "main/main.jsp";
	
		
		
	}

}
