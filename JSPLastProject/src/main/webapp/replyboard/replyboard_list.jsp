<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="wrapper row3">
  <main class="container clear">
    <h2 class="sectiontitle">묻고 답하기</h2>
    <table class="table">
     <tr>
      <td>
       <a href="../replyboard/insert.do" class="btn btn-sm btn-primary">등록</a>
      </td>
     </tr>
    </table>
    <table class="table">
     <tr>
      <th width="10%" class="text-center">번호</th>
      <th width="45%" class="text-center">제목</th>
      <th width="15%" class="text-center">작성자</th>
      <th width="20%" class="text-center">작성일</th>
      <th width="10%" class="text-center">조회수</th>
     </tr>
     <c:forEach var="vo" items="${rbList }">
       <tr>
      <th width="10%" class="text-center">${count }</th>
      <th width="45%">
      <c:if test="${vo.group_step>0 }">
      &nbsp;&nbsp;
      <img src="">
      </c:if>
      ${vo.subject }
      </th>
      <th width="15%" class="text-center">${vo.name }</th>
      <th width="20%" class="text-center">${vo.dbday }</th>
      <th width="10%" class="text-center">${vo.hit }</th>
     </tr>
     </c:forEach>
    </table>
  </main>
</div>
</body>
</html>