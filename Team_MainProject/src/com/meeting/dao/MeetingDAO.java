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
    
    
}
