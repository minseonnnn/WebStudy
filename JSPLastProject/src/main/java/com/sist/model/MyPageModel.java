package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.commons.CommonsModel;
import com.sist.controller.RequestMapping;
import com.sist.dao.MemberDAO;
import com.sist.vo.MemberVO;

public class MyPageModel {
   @RequestMapping("mypage/mypage_main.do")
   public String mypage_main(HttpServletRequest request,HttpServletResponse response)
   {
	   request.setAttribute("mypage_jsp", "../mypage/mypage_home.jsp");
	   request.setAttribute("main_jsp", "../mypage/mypage_main.jsp");
	   CommonsModel.footerPrint(request);
	   return "../main/main.jsp";
   }
   @RequestMapping("member/join_update.do")
   public String mypage_join_update(HttpServletRequest request,HttpServletResponse response)
   {
	   HttpSession session=request.getSession();
	   String id=(String)session.getAttribute("id");
	   MemberVO vo=MemberDAO.memberUpdateData(id);
	   
	   
	   request.setAttribute("mypage_jsp", "../member/join_update.jsp");
	   request.setAttribute("main", "../mypage/mypage_main.jsp");
	   return "../main/main.jsp";
   }
   
}
