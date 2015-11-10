package com.custom.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class NoticeDAO {
	private static SqlSessionFactory ssf;
    static
    {
    	try
    	{
    		Reader reader=Resources.getResourceAsReader("com/common/Config.xml");
    		ssf=new SqlSessionFactoryBuilder().build(reader);
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    }
    public static List<NoticeDTO> notice_boardListData(Map map)
    {
    	SqlSession session=ssf.openSession();
    	List<NoticeDTO> list=session.selectList("notice_boardListData",map);
    	System.out.println("start:"+map.get("start"));
    	System.out.println("end:"+map.get("end"));
    	session.close();
    	return list;
    }
    public static int notice_boardTotalPage()
    {
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("notice_boardRowCount");
    	int total=(int)(Math.ceil(count/10.0));
    	session.close();
    	return total;
    }
    
    public static NoticeDTO notice_boardContentData(int no){
    	SqlSession session=ssf.openSession();
    	NoticeDTO d=session.selectOne("notice_boardContentData",no);
    	session.close();
    	return d;
 }
    public static void noticeInsert(NoticeDTO d){
    	SqlSession session=ssf.openSession(true);
    	session.update("noticeInsert",d);
    	session.close();
    }
    
    public static List<NoticeDTO> notice_searchListData(String word)
    {
    	SqlSession session=ssf.openSession();
    	List<NoticeDTO> list=session.selectList("notice_searchListData",word);
    	session.close();
    	return list;
    }
    
    public static int notice_searchTotalCount(String word){
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("notice_searchboardRowCount",word);
    	int total=(int)(Math.ceil(count/10.0));
    	session.close();
    	return total;
    }
    
    public void notice_delete(int no){
    	SqlSession session=ssf.openSession(true);
    	session.update("notice_delete",no);
    	session.close();
    }
 
    
   // qna ******************************************************* 
    public static List<QnaVO> qna_boardListData(Map map)
    {
    	SqlSession session=ssf.openSession();
    	List<QnaVO> list=session.selectList("qna_boardListData",map);
    	System.out.println("start:"+map.get("start"));
    	System.out.println("end:"+map.get("end"));
    	session.close();
    	return list;
    }
    public static int qna_boardTotalPage()
    {
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("qna_boardRowCount");
    	int total=(int)(Math.ceil(count/10.0));
    	session.close();
    	return total;
    }
    
    public static QnaVO qna_boardContentData(int no){
    	SqlSession session=ssf.openSession();
    	QnaVO d=session.selectOne("qna_boardContentData",no);
    	session.close();
    	return d;
 }
    public static void qnaInsert(QnaVO d){
    	SqlSession session=ssf.openSession(true);
    	session.update("qnaInsert",d);
    	session.close();
    }
  
    // qna ******************************************************* 
    // faq ******************************************************* 
    
    public static List<FaqVO> faq_boardListData(Map map)
    {
    	SqlSession session=ssf.openSession();
    	List<FaqVO> list=session.selectList("faq_boardListData",map);
    	System.out.println("start:"+map.get("start"));
    	System.out.println("end:"+map.get("end"));
    	session.close();
    	return list;
    }
    public static int faq_boardTotalPage()
    {
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("faq_boardRowCount");
    	System.out.println(count+"<<count");
    	int total=(int)(Math.ceil(count/10.0));
    	session.close();
    	return total;
    }
    public void faq_click(int fno){
    	SqlSession session=ssf.openSession(true);
    	session.update("faq_click",fno);
    	session.close();
    }
    
    public static void faqInsert(FaqVO fvo){
    	SqlSession session=ssf.openSession(true);
    	session.update("faqInsert",fvo);
    	session.close();
    }
    
    public static List<FaqVO> faq_searchListData(String word)
    {
    	SqlSession session=ssf.openSession();
    	List<FaqVO> list=session.selectList("faq_searchListData",word);
    	session.close();
    	return list;
    }
    public static int faq_searchTotalCount(String word){
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("faq_searchboardRowCount",word);
    	int total=(int)(Math.ceil(count/10.0));
    	session.close();
    	return total;
    }
    public void faq_delete(int no){
    	SqlSession session=ssf.openSession(true);
    	session.update("faq_delete",no);
    	session.close();
    }
    
    
}
