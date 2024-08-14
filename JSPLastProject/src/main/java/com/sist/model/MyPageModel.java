package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.commons.CommonsModel;
import com.sist.controller.RequestMapping;

public class MyPageModel {
  @RequestMapping("mypage/mypage_main.do")
  public String mypage_main(HttpServletRequest request,HttpServletResponse response)
  {
	  request.setAttribute("mypage_jsp", "../mypage/mypage_jsp");
	  request.setAttribute("main_jsp", "../mypage/mypage_main.jsp");
	  CommonsModel.footerPrint(request);
	  return "../main/main.jsp";
  }
}
