package com.member.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.meeting.dao.MeetingDTO;



public class MemberDAO {
	
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
    
    public static int memberIdCount(String email)
    {
    	SqlSession session = ssf.openSession();
    	int count = session.selectOne("memberIdCount", email);
    	session.close();
    	return count;
    }
    
    public static MemberDTO memberGetInfo(String email)
    {
    	SqlSession session = ssf.openSession();
    	MemberDTO d = session.selectOne("memberGetInfo", email);
    	session.close();
    	return d;
    }
    
    public static void memberInsert(MemberDTO d)
    {
    	SqlSession session=ssf.openSession(true);
    	session.insert("memberInsert",d);
    	session.close();
    }

    public static void modifyupdate(MemberDTO d)
    {
    	SqlSession session = ssf.openSession(true);
    	session.update("modifyupdate", d);
    	session.close();
 
    }
    public static List<gtableDTO> gtableListData(){
 	   SqlSession session= ssf.openSession();
 	   List<gtableDTO> list = session.selectList("gtableListData");
 	   session.close();
 	   return list;
    }
    
    public static List<MeetingDTO> meetingTableListData(){
  	   SqlSession session= ssf.openSession();
  	   List<MeetingDTO> list = session.selectList("meetingTableListData");
  	   session.close();
  	   return list;
     }
    
    public static List<MeetingDTO> searchMeeting(String word){
  	   SqlSession session= ssf.openSession();
  	   List<MeetingDTO> list = session.selectList("searchMeeting", word);
  	   session.close();
  	   return list;
     }
    public static MemberDTO meetingOpenerData(String email)
    {
    	SqlSession session= ssf.openSession();
   	   MemberDTO d = session.selectOne("meetingOpenerData", email);
   	   session.close();
   	   return d;
    }
    public static MemberDTO meetingMemberData(String email)
    {
    	SqlSession session= ssf.openSession();
    	MemberDTO d = session.selectOne("meetingMemberData", email);
    	session.close();
    	return d;
    }
    
    
    public static List<MeetingDTO> MeetingType(String lang){
   	   SqlSession session= ssf.openSession();
   	   List<MeetingDTO> list = session.selectList("MeetingType", lang);
   	   session.close();
   	   return list;
      }
    
    public static int MeetingTypeCount(String lang){
    	   SqlSession session= ssf.openSession();
    	   int count = session.selectOne("MeetingTypeCount", lang);
    	   session.close();
    	   return count;
       }
    
    public static List<MeetingDTO> MeetingTypePlace(String place){
   	   SqlSession session= ssf.openSession();
   	   List<MeetingDTO> list = session.selectList("MeetingTypePlace", place);
   	   session.close();
   	   return list;
      }
    
    
    public static int MeetingTypePlaceCount(String place){
   	   SqlSession session= ssf.openSession();
   	   int count = session.selectOne("MeetingTypePlaceCount", place);
   	   session.close();
   	   return count;
      }
    
    public static List<MeetingDTO> DetailSearchForPlace(MeetingDTO d){
    	   SqlSession session= ssf.openSession();
    	   List<MeetingDTO> list = session.selectList("DetailSearchForPlace", d);
    	   session.close();
    	   return list;
       }
    
    public static int DetailSearchForPlaceCount(MeetingDTO d){
 	   SqlSession session= ssf.openSession();
 	   int count = session.selectOne("DetailSearchForPlaceCount", d);
 	   session.close();
 	   return count;
    }
}
