<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<jsp:useBean id="dao" class="com.sist.dao.GoodsDAO"></jsp:useBean>


<%
String strpage = request.getParameter("page");
if (strpage == null)
	strpage = "1";
int curpage = Integer.parseInt(strpage);
List<GoodsVO> list = dao.goodsListData(curpage);
int totalpage = dao.goodsListTotalPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<%
		for (GoodsVO vo : list) {
		%>
		<div class="col-sm-3">
			<a href="../main/main.jsp?no=<%=vo.getNo()%>&mode=3">
				<div class="thumbnail">
					<img src="<%=vo.getPoster()%>" style="width: 240px; height: 200px">
					<p class="a"><%=vo.getName()%></p>
				</div>
			</a>
		</div>
		<%
		}
		%>
	</div>
	<div style="height: 20px"></div>
	<div class="row">
		<div class="text-center">
			<a href="../main/main.jsp?mode=2&page=<%=curpage > 1 ? curpage - 1 : curpage%>"
				class="btn btn-sm btn-danger">이전</a>
			<%=curpage%>
			page /
			<%=totalpage%>
			pages <a
				href="../main/main.jsp?mode=2&page=<%=curpage < totalpage ? curpage + 1 : curpage%>"
				class="btn btn-sm btn-primary">다음</a>
		</div>
	</div>
</body>
</html>