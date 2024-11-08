package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.database.*;
public class GoodsDAO {
	   private Connection conn;
	   private PreparedStatement ps;
	   private static GoodsDAO dao;
	   private DataBaseConnection dbConn=new DataBaseConnection();
	   
	   public static GoodsDAO newInstance()
	   {
		   if(dao==null)
			   dao=new GoodsDAO();
		   return dao;
	   }  
	   
	   public List<GoodsVO> goodsListData(int page)
	   {
		   List<GoodsVO> list=new ArrayList<GoodsVO>();
		   try
		   {
			   conn=dbConn.getConnection();
			   String sql="SELECT no,goods_poster,goods_name,num "
					     +"FROM (SELECT no,goods_poster,goods_name,rownum as num "
					     +"FROM (SELECT /*+ INDEX_ASC(goods_all goods_no_pk)*/no,goods_poster,goods_name "
					     +"FROM goods_all)) "
					     +"WHERE num BETWEEN ? AND ?";
				ps=conn.prepareStatement(sql);
				int rowSize=12;
				int start=(rowSize*page)-(rowSize-1);
				int end=rowSize*page;
				ps.setInt(1, start);
				ps.setInt(2, end);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					GoodsVO vo=new GoodsVO();
					vo.setNo(rs.getInt(1));
					vo.setPoster(rs.getString(2));
					vo.setName(rs.getString(3));
					
					list.add(vo);
				}
				rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   dbConn.disConnection(conn, ps);
		   }
		   return list;
	   }
	   public int goodsTotalPage() 
	   {
		   int total=0;
		   try
		   {
			   conn=dbConn.getConnection();
			   String sql="SELECT CEIL(COUNT(*)/12.0) FROM goods_all";
			   // 전송 
			   ps=conn.prepareStatement(sql);
			   // 결과값
			   ResultSet rs=ps.executeQuery(); 
			   rs.next();
			   total=rs.getInt(1);
			   rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   dbConn.disConnection(conn, ps);
		   }
		   return total;
	   }
	   
	   public GoodsVO goodsDetailData(int no)
	   {
		   GoodsVO vo=new GoodsVO();
		   try
		   {
			   conn=dbConn.getConnection();
			   String sql="UPDATE goods_all SET "
					     +"hit=hit+1 "
					     +"WHERE no=?";
			   ps=conn.prepareStatement(sql);
			   ps.setInt(1, no);
			   ps.executeUpdate();
			   
			   sql="SELECT no,goods_discount,goods_first_price,goods_name,goods_sub,goods_price,goods_delivery,goods_poster "
				  +"FROM goods_all "	   
			      +"WHERE no=?";
			   
			   ps=conn.prepareStatement(sql);

			   ps.setInt(1, no);

			   ResultSet rs=ps.executeQuery();
			   
			   rs.next();
			   vo.setNo(rs.getInt(1));
			   vo.setDiscount(rs.getInt(2));
			   vo.setRprice(rs.getString(3));
			   vo.setName(rs.getString(4));
			   vo.setSub(rs.getString(5));
			   vo.setPrice(rs.getString(6));
			   vo.setDelivery(rs.getString(7));
			   vo.setPoster(rs.getString(8).replace("https", "http"));

			   rs.close();
		   }catch(Exception ex)
		   {
			   System.out.println("=====goodsDetailData() 오류=====");
			   ex.printStackTrace();
		   }
		   finally
		   {
			   dbConn.disConnection(conn, ps);
		   }
		   return vo;
	   }
	}
	   