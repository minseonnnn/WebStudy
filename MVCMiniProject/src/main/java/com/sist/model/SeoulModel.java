package com.sist.model;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.*;
import com.sist.dao.*;
import  com.sist.vo.*;

public class SeoulModel {
      @RequestMapping("seoul/location.do")
      public String seoul_list(HttpServletRequest request, HttpServletResponse response)
      {
         String page = request.getParameter("page");
         if(page==null)
            page="1";
         int curpage = Integer.parseInt(page);
         SeoulDAO dao = SeoulDAO.newInstance();
         List<LocationVO> sList = dao.seoulLocationListData(curpage);
         int totalpage=dao.seoulLocationTotalPage();
         final int BLOCK= 10;
         int startPage = ((curpage-1)/BLOCK*BLOCK)+1;
         int endPage = ((curpage-1)/BLOCK*BLOCK)+BLOCK;
         
         if(endPage>totalpage)
            endPage = totalpage;
         
         request.setAttribute("sList", sList);
         request.setAttribute("curpage", curpage);
         request.setAttribute("totalpage", totalpage);
         request.setAttribute("startPage", startPage);
         request.setAttribute("endPage", endPage);
         
         request.setAttribute("main_jsp", "../seoul/location.jsp");
         return "../main/main.jsp"; 
         
      }
}
