<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , model.*"%>
<%@include file="./userHead.jsp"%>
<link rel="stylesheet" type="text/css" href="./admin/css/history.css"/>


<%
	ArrayList<Restaurant> restList = (ArrayList<Restaurant>)request.getAttribute("restList");
	

%>
		<table>
			<tr>
			<thead>
				<th class="no">NO</th>
				<th class="name">상호</th>
				<th class="desc">설명</th>
				<th class="location">위치</th>
			</thead>
			</tr>
			<%
			for(int i = 0; i < restList.size(); i++){
				String name = restList.get(i).getName();
				String desc = restList.get(i).getDesc();
				String location = restList.get(i).getLocation();
				int no = restList.get(i).getNo();

			
			%>
			<tr>
					<td><%=no%></td>
					<td><%=name%></td>
					<td><%=desc %></td>
					<td><%=location%></td>
			</tr>
	
			<%
				}
			%>
		</table>
<%@include file="./userFoot.jsp"%>