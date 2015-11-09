package com.sort.dao;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sort.dao.*;



public class SortDAO {
	
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
    
    
    public static List<SortDTO> languageListData()
    {
 	   SqlSession session= ssf.openSession();
 	   List<SortDTO> list = session.selectList("languageAllData");
 	   session.close();
 	   return list;
    }
    
  
    public static List<SortDTO> languageListData(String m_Lang2)
    {
 	   SqlSession session= ssf.openSession();
 	   List<SortDTO> list = session.selectList("languageListData",m_Lang2);
 	   session.close();
 	   return list;
    }
    
    public static int languageCount()
    {
 	   SqlSession session= ssf.openSession();
 	   int count = session.selectOne("languageCount");
 	   session.close();
 	   return count;
    }
    
    public static int languageCount(String m_Lang2)
    {
 	   SqlSession session= ssf.openSession();
 	   int count = session.selectOne("languageCountData", m_Lang2);
 	   session.close();
 	   return count;
    }
    
    public static List<SortDTO> areaListData()
    {
 	   SqlSession session= ssf.openSession();
 	   List<SortDTO> list = session.selectList("areaAllData");
 	   session.close();
 	   return list;
    }
    
    public static List<SortDTO> areaListData(String m_Area)
    {
 	   SqlSession session= ssf.openSession();
 	   List<SortDTO> list = session.selectList("areaListData",m_Area);
 	   session.close();
 	   return list;
    }
    
    
    public static int areaCount()
    {
 	   SqlSession session= ssf.openSession();
 	   int count = session.selectOne("areaCount");
 	   session.close();
 	   return count;
    }
    
    public static int areaCount(String m_Area)
    {
 	   SqlSession session= ssf.openSession();
 	   int count = session.selectOne("areaCountData", m_Area);
 	   session.close();
 	   return count;
    }
}    
    

