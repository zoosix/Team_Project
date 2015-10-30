package com.member.dao;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.member.dao.*;


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
    public static void modifyupdate(MemberDTO d)
    {
    	SqlSession session = ssf.openSession(true);
    	session.update("modifyupdate", d);
    	session.close();
 
    }
    
    
  
    
}
