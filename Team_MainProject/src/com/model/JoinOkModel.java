package com.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class JoinOkModel implements Model {

   @Override
   public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
      String path=req.getSession().getServletContext().getRealPath("/")+"human" + File.separator + "multiupload" + File.separator;
      System.out.println("path="+path);
      File file = new File(path);
      if (!file.exists()) {
          file.mkdirs();
      }
      
      String enctype="UTF-8";
      int size=1024*1024*10;
      MultipartRequest lr=new MultipartRequest(req,path,size,enctype,new DefaultFileRenamePolicy());
      
      String filename=lr.getOriginalFileName("upload");
      System.out.println("�̸�"+filename);
      req.setCharacterEncoding("UTF-8");


        String email = lr.getParameter("email");
        String pwd = lr.getParameter("pwd");
        String name = lr.getParameter("name");
        String nickname = lr.getParameter("nickname");
        String age = lr.getParameter("age");
        String sex = lr.getParameter("sex");
        String nation = lr.getParameter("nation");
        String tel = lr.getParameter("tel");
        String language = lr.getParameter("language");
        String intro=lr.getParameter("intro");
        String lang = lr.getParameter("lang");
       
      MemberDTO d=new MemberDTO();
      d.setEmail(email);
      d.setPwd(pwd);
      d.setName(name);
      d.setNickname(nickname);
      d.setAge(Integer.parseInt(age));
      d.setSex(sex);
      d.setNation(nation);
      d.setIntro(intro);
      d.setTel(tel);
      d.setLanguage(language);
      d.setLang(lang);
      
      if(filename==null)
      {
         d.setPname("");
         d.setPsize(0);
      }
      else
      {
         d.setPname(filename);
         File file2=new File(path+"\\"+filename);
         d.setPsize((int)file2.length());
      }
      
      MemberDAO.memberInsert(d);
      return "main.do";
   }
   
}