<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String no=request.getParameter("no");
    Cookie cookie=new Cookie("food_"+no,no);
    cookie.setPath("/");
    cookie.setMaxAge(60*60*24);
    response.addCookie(cookie);
    
    response.sendRedirect("detail.jsp?no="+no);
%>    