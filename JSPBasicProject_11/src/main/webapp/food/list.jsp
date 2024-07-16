<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%
    String strPage=request.getParameter("page");
    if(strPage==null)
    	strPage="1";
    
    int curpage=Integer.parseInt(strPage);
    
    FoodDAO dao=FoodDAO.newInstance();
    List<FoodVO> list=dao.foodListData(curpage);
    int totalpage=dao.foodTotalPage();
    
    final int BLOCK=10;
    int startPage=((curpage-1)/BLOCK*BLOCK)+1;
    int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
    
    if(endPage>totalpage)
    	endPage=totalpage;
    
    Cookie[] cookies=request.getCookies();
    List<FoodVO> cList=new ArrayList<FoodVO>();
    if(cookies!=null)
    {
    	// 가장 최신에 등록된 쿠키 데이터 읽기
    	for(int i=cookies.length-1;i>=0;i--)
    	{
    		if(cookies[i].getName().startsWith("food_"))
    		{
    			String no=cookies[i].getValue();
    			FoodVO vo=dao.foodDetailData(Integer.parseInt(no));
    			cList.add(vo);
    		}
    	}
    }
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
  margin-top: 50px;
}
.row{
  margin: 0px auto;
  width: 960px;
}
.a{
   white-space: nowrap;
   overflow: hidden;
   text-overflow: ellipsis;
}
</style>
</head>
<body>
<div class="container">
    <div class="row">
      <%
         for(FoodVO vo:list)
         {
      %>
            <div class="col-sm-3">
             <div class="thumbnail">
              <a href="detail_before.jsp?no=<%=vo.getFno()%>">
               <img src="<%=vo.getPoster() %>" style="width: 230px; height: 200px">
               <p class="a"><%=vo.getName() %></p>
              </a> 
             </div>
            </div>
      <%
         }
      %>
    </div>
    <div class="row">
      <div class="text-center">
        <ul class="pagination">
          <%
             if(startPage>1) 
             {
          %>
         <li><a href="list.jsp?page=<%=startPage-1%>">&lt;</a></li>
          <%
             }
             for(int i=startPage;i<=endPage;i++)
             {
          %>
                <li class="<%=i==curpage?"active":""%>"><a href="list.jsp?page=<%=i%>"><%=i %></a></li>
          <%
             }
             
             if(endPage<totalpage) 
             {
          %>
         <li><a href="list.jsp?page=<%=endPage+1%>">&gt;</a></li>
         <%
             }
         %>
        </ul>
      </div>
    </div>
    <div style="height: 20px"></div>
    <div class="row">
     <h3>최근 방문 음식점</h3>
     <hr>
     <a href="all_delete.jsp" class="btn btn-sm btn-success">전체 삭제</a>
     <a href="all_view.jsp" class="btn btn-sm btn-info">전체 보기</a>
     <hr>
     <%
        int i=0;
        for(FoodVO vo:cList)
        {
        	if(i>8) break;
     %>
            <figure style="float: left; margin-left: 5px">
             <img src="<%=vo.getPoster() %>" style="width: 100px; height: 100px"
              class="img-rounded"
             >
             <figcaption style="margin: 5px 30px">
               <a href="delete.jsp?no=<%=vo.getFno() %>" class="btn btn-xs btn-danger">삭제</a>
             </figcaption> 
            </figure>
     <%   	
        	i++;
        }
     %>
    </div>
  </div>
</body>
</html>