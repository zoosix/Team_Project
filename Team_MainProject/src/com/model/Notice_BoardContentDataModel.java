package com.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.NoticeDAO;
import com.custom.dao.NoticeDTO;

public class Notice_BoardContentDataModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
				String rPage=req.getParameter("rPage");
				if(rPage==null)
					rPage="1";
				int rcurpage=Integer.parseInt(rPage);
				
				String strNo=req.getParameter("no");
				String strPage=req.getParameter("page");
//				NoticeDTO d=NoticeDAO.notice_boardContentData()(Integer.parseInt(strNo));
//				List<NoticeDTO> temp=
//						NoticeDAO.notice_boardContentData(Integer.parseInt(strNo));
//				List<NoticeDTO> list=
//						new ArrayList<NoticeDTO>();
//				int j=0;
//				int pagecnt=(rcurpage*5)-5;
//				for(int i=0;i<temp.size();i++)
//				{
//					if(j<5 && i>=pagecnt)
//					{
//						NoticeDTO dd=temp.get(i);
//						list.add(dd);
//						j++;
//					}
//				}
//				//int rtotal=NoticeDAO.notice_boardTotalPage(Integer.parseInt(strNo));
//				
//				req.setAttribute("rcurpage", rcurpage);
//			//	req.setAttribute("rtotal", rtotal);
//				req.setAttribute("rlist", list);
//				req.setAttribute("d", d);
//				req.setAttribute("curpage", strPage);
//				req.setAttribute("jsp", "../board/board_content.jsp");
				return "main/main.jsp";
	}

}
