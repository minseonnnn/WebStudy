<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao1.*"%>
<%
    GoodsDAO dao=GoodsDAO.newInstance();
    String no=request.getParameter("no");
    String type=request.getParameter("type");
    GoodsVO vo=dao.goodsDetailData(Integer.parseInt(no),Integer.parseInt(type));
    
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container {
	margin-top: 50px;
}
.row {
	margin: 0px auto;
	width: 960px;
}
</style>
</head>
<body>
   <div class="container">
		<div class="row">
			<table class="table table-striped">
				<tr>
					<td width="30%" class="text-center" rowspan="7">
					<img src="<%=vo.getPoster() %>" style="width: 100%" class="img-rounded">
					</td>
					<td colspan="2"><h3><%=vo.getName() %></h3></td>
				</tr>
				<tr>
					<th>배송</th>
					<td><%=vo.getDelivery() %></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><%=vo.getPrice() %></td>
				</tr>
				<tr>
					<th>할인</th>
					<td><%=vo.getDiscount()+"%" %></td>
				</tr>
				<tr>
					<th>첫 구매가</th>
					<td><%=vo.getRprice() %></td>
				</tr>
				<tr>
					<td colspan="2" class="text-right">
					<input type=button value="장바구니" class="btn-xs btn-primary"> 
					<input type=button value="좋아요" class="btn-xs btn-success"> 
					<input type=button value="구매" class="btn-xs btn-info"> 
					<input type=button value="목록" class="btn-xs btn-warning"
					onclick="javascript:history.back()"
					>
					</td>
				</tr>
			</table>
			<table class="table">
			  <tr>
			   <td>
			    <pre style="white-space: pre-wrap; border:none; background-color: white;"><%=vo.getSub() %></pre>
			   </td>
			  </tr>
			</table>
		</div>
	</div>
</body>
</html>