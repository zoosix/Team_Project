package com.model;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dao.gtableDTO;

public class MainModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		List<gtableDTO> list=MemberDAO.gtableListData();
		req.setAttribute("list", list);
		req.setAttribute("title", "�옄�쑀 寃뚯떆�뙋");
		req.setAttribute("slide", "../main/slide.jsp");
		req.setAttribute("jsp", "../mypage/gtable.jsp");
		return "main/main.jsp";
	}

}
