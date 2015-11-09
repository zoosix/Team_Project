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
public class AreaListModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String m_Area=req.getParameter("m_Area");
		List<SortDTO> list= new ArrayList<SortDTO>();
		int count = 0;
		if(m_Area==null)
		{
			list = SortDAO.areaListData();
			count = SortDAO.areaCount();
		}
		else
		{
			list=SortDAO.areaListData(m_Area);
			count = SortDAO.areaCount(m_Area);
			req.setAttribute("m_Area", m_Area);
		}
		req.setAttribute("count", count);
		req.setAttribute("list", list);
		req.setAttribute("title", "Áö¿ªº°");
		req.setAttribute("jsp", "../sort/area.jsp");
		
		return "main/main.jsp";
	
	}

}
