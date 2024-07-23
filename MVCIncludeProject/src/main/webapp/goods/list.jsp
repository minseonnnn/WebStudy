<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="row">
    <h3 class="text-center">상품 목록</h3>
    <table class="table">
     <tr>
      <th class="text-center" width="10%">번호</th>
      <th class="text-center" width="50%"></th>
      <th class="text-center" width="25%">제목</th>
      <th class="text-center" width="15%">가격</th>
     </tr>
      <c:forEach var="vo" items="${list }">
        <tr>
          <td class="text-center">${vo.no }</td>
          <td class="text-center">
           <img src="${vo.poster }" style="width: 250px; height: 250px">
          </td>
          <td><a href="../goods/detail.do?no=${vo.no }">${vo.name }</a></td>
          <td>${vo.price }</td>
        </tr>
      </c:forEach>
    </table>
    <table class="table">
     <tr>
      <td class="text-center">
       <a href="../goods/list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-success">이전</a>
        ${curpage } page / ${totalpage } pages
       <a href="../goods/list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-success">다음</a>
      </td>
     </tr>
    </table>
  </div>
</body>
</html>