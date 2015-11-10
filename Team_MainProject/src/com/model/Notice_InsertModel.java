package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Notice_InsertModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub

		req.setAttribute("jsp", "../custom_board/notice_insert.jsp");
		return "main/main.jsp";
		}
	}