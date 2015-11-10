package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.FaqVO;
import com.custom.dao.NoticeDAO;

public class Faq_InsertModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub

		req.setAttribute("jsp", "../custom_board/faq_insert.jsp");
		return "main/main.jsp";
		}
	}