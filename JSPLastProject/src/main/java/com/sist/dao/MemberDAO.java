package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.MemberVO;
public class MemberDAO {
  private static SqlSessionFactory ssf;
  static
  {
	  ssf=CreateSqlSessionFactory.getSsf();
  }
  /*
   *   <select id="memberIdCountData" resultType="int" parameterType="string">
		  SELECT COUNT(*) FROM member
		  WHERE id=#{id}
		 </select>
		 <select id="memberInfoData" resultType="MemberVO" parameterType="string">
		   SELECT * FROM member
		   WHERE id=#{id}
		 </select>
   */
  public static MemberVO isLogin(String id,String pwd)
  {
	  MemberVO vo=new MemberVO();
	  SqlSession session=null;
	  try
	  {
		  session=ssf.openSession();
		  int count=session.selectOne("memberIdCountData",id);// id => #{id}
		  if(count==0)
		  {
			  vo.setMsg("NOID");
		  }
		  else
		  {
			  vo=session.selectOne("memberInfoData",id);
			  if(pwd.equals(vo.getPwd())) // 로그인
			  {
				  vo.setMsg("OK");
			  }
			  else // 비밀번호가 틀린 상태 
			  {
				  vo.setMsg("NOPWD");
			  }
		  }
	  }catch(Exception ex)
	  {
		  ex.printStackTrace();
	  }
	  finally
	  {
		  if(session!=null)
			  session.close(); // DBCP => POOL안으로 반환 => 재사용
	  }
	  return vo;
  }
  // 아이디 중복 체크
  public static int memberIdCheck(String id)
  {
	  int count=0;
	  SqlSession session=null;
	  try
	  {
		  session=ssf.openSession();
		  count=session.selectOne("memberIdCountData",id);
	  }catch(Exception ex)
	  {
		  ex.printStackTrace();
	  }
	  finally
	  {
		  if(session!=null)
			  session.close();
	  }
	  return count;
  }
  /*
   *     <insert id="memberInsert" parameterType="MemberVO">
		   INSERT INTO project_member VALUES(
		     #{id},#{pwd},#{name},#{sex},#{birthday},#{post},
		     #{addr1},#{addr2},#{phone},#{email},#{content},SYSDATE,'n'
		   )
		 </insert>
   */
  public static void memberInsert(MemberVO vo)
  {
	  SqlSession session=null;
	  try
	  {
		  session=ssf.openSession(true);
		  session.insert("memberInsert",vo);
	  }catch(Exception ex)
	  {
		  ex.printStackTrace();
	  }
	  finally
	  {
		  if(session!=null)
			  session.close();
	  }
  }
  // 수정
  /*
   *     <select id="memberUpdateData" resultType="MemberVO" parameterType="string">
		   SELECT name,sex,birthday,post,addr1,addr2,phone,email,content
		   FROM project_member
		   WHERE id=#{id}
		 </select>	
   */
  public static MemberVO memberUpdateData(String id)
  {
	  MemberVO vo=new MemberVO();
	  SqlSession session=null;
	  try
	  {
		  session=ssf.openSession(true);
		  vo=session.selectOne("memberUpdateData",id);
	  }catch(Exception ex)
	  {
		  ex.printStackTrace();
	  }
	  finally
	  {
		  if(session!=null)
			  session.close();
	  }
	  return vo;
  }
}






