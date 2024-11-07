package com.sist.model;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.commons.CommonsModel;
import com.sist.controller.*;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;
public class MainModel {
   @RequestMapping("main/main.do")
   public String main_page(HttpServletRequest request,HttpServletResponse response)
   {
	   HttpSession session=request.getSession();
	   session.setAttribute("id", "admin");
	   session.setAttribute("name", "홍길동");
	   session.setAttribute("admin", "y");
	   
	   FoodDAO fDao=FoodDAO.newInstance();
	   List<FoodVO> fList=fDao.foodTop12();
	   
	   SeoulDAO sDao=SeoulDAO.newInstance();
	   List<LocationVO> sList=sDao.seoulTop12();
	   
	   GoodsDAO gDao=GoodsDAO.newInstance();
	   List<GoodsVO> gList=gDao.goodsTop12();
	   
	   // Cookie 
	   Cookie[] cookies=request.getCookies(); // 브라우저 쿠키를 읽을때 사용 
	   List<FoodVO> cList=new ArrayList<FoodVO>();
	   
	   if(cookies!=null)
	   {
		   for(int i=cookies.length-1;i>=0;i--)
		   {
			   if(cookies[i].getName().startsWith("food_"))
			   {
				   String fno=cookies[i].getValue();
				   FoodVO vo=fDao.foodDetailData(Integer.parseInt(fno));
				   cList.add(vo);
			   }
		   }
	   }
	   
	   
	   request.setAttribute("cList", cList);
	   request.setAttribute("gList", gList);
	   request.setAttribute("fList", fList);
	   request.setAttribute("sList", sList);
	   request.setAttribute("main_jsp", "../main/home.jsp");
	   
	   CommonsModel.commonsData(request);
	   return "../main/main.jsp";
   }
}