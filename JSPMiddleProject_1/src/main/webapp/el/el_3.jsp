<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.vo.*"%>
<%
    SawonVO vo=new SawonVO();
    vo.setSabun(1);
    vo.setName("홍길동");
    vo.setDept("개발부");
    vo.setJob("사원");
    vo.setPay(3000);
    
    request.setAttribute("vo1", vo); // ${} => request나 session에 있는 값만 출력
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>EL => 객체 출력 방법</h1>
  <%= ((SawonVO)request.getAttribute("vo1")).getSabun() %>
  사번:${vo1.sabun},${vo.getSabun() }<br><%-- request.getAttribute(), session.getAttribute() --%>
  이름:${vo1.name },${vo.getName() }<br>
  부서:${vo1.dept },${vo.getDept() }<br>
  직위:${vo1.job },${vo.getJob() }<br>
  연봉:${vo1.pay },${vo.getPay() }
</body>
</html>