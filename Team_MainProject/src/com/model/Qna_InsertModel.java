package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Qna_InsertModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub

		req.setAttribute("jsp", "../custom_board/qna_insert.jsp");
		return "main/main.jsp";
		}
	}