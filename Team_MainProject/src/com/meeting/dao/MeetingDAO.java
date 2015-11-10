package com.meeting.dao;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class MeetingDAO {
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
    public static void meetingInsert(MeetingDTO d)
    {
    	SqlSession session=ssf.openSession(true);
    	session.insert("meetingInsert",d);
    	session.close();
    }
    public static MeetingDTO meetingDetail(int m_no)
    {
    	SqlSession session=ssf.openSession();
    	MeetingDTO d=session.selectOne("meetingDetail",m_no);
    	session.close();
    	return d;
    }
    public static void meetingApply(MeetingMemberDTO d)
    {
    	SqlSession session=ssf.openSession(true);
    	session.insert("meetingApply",d);
    	session.close();
    }
    public static void meetingWish(WishDTO d){
    	SqlSession session=ssf.openSession(true);
    	session.insert("meetingWish",d);
    	session.close();
    	
    }
    
    public static int wishCount(WishDTO d){
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("wishCount",d);
    	session.close();
    	return count;
    }
    public static void meetingWishAdd(int mno){
    	SqlSession session=ssf.openSession(true);
    	session.update("meetingWishAdd",mno);
    	session.close();
    }
    
    public static List<MeetingDTO> meetingTableListData2(){
   	   SqlSession session= ssf.openSession();
   	   List<MeetingDTO> list = session.selectList("meetingTableListData2");
   	   session.close();
   	   return list;
      }
    
    public static void meetingWishMinus(int mno){
    	SqlSession session=ssf.openSession(true);
    	session.update("meetingWishMinus",mno);
    	session.close();
    }
    
    public static void mywishDel(WishDTO d){
    	SqlSession session=ssf.openSession(true);
    	session.insert("mywishDel",d);
    	session.close();
    	
    }
    
    public static List<MeetingDTO> mywishList(String email){
    	SqlSession session=ssf.openSession();
    	 List<MeetingDTO> list = session.selectList("mywishList",email);
    	 return list;
    }
    
    public static List<MeetingDTO> mymeetingData(String email) {
    	SqlSession session=ssf.openSession();
     	 List<MeetingDTO> list = session.selectList("mymeetingData",email);
      	return list;
    }
    
    public static int mymeetingCount(String email){
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("mymeetingCount",email);
    	session.close();
    	return count;
    } 
    
    public static int mywishCount(String email){
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("mywishCount",email);
    	session.close();
    	return count;
    }    

}
