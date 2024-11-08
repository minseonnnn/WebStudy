package com.sist.dao;
import java.util.*;
import java.io.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class EmpDAO {
	// XML을 파싱
	private static SqlSessionFactory ssf;
	static
	{
		try
		{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	public static List<EmpVO> empListData(){
		List<EmpVO> list=new ArrayList<EmpVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("empListData");
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close(); // connection 반환
		}
		return list;
	}
	// <select id="empDetailData" resultType="EmpVO" parameterType="int">
	public static EmpVO empDetailData(int empno)
	{
		SqlSession session=null;
		EmpVO vo=new EmpVO();
		try
		{
			session=ssf.openSession();
			vo=session.selectOne("empDetailData", empno);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close(); // connection 반환
		}
		return vo;
	}
}
