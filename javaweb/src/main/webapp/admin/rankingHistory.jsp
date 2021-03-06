<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@include file="/admin/head.jsp"%>
<link rel="stylesheet" type="text/css" href="/nyam/admin/css/rankingHistory.css" />

<%
	ArrayList<HashMap<String, String>> nyamRanking = (ArrayList<HashMap<String, String>>) request
			.getAttribute("nyamRanking");
	int count = 0;
	int year = (Integer) request.getAttribute("year");
	int month = (Integer) request.getAttribute("month");
%>

<div class="title"><%=year%>년
	<%=month + 1%>월
</div>
<table>
	<tr>
	<thead>
		<th class="ranking">순위</th>
		<th class="id">아이디</th>
		<th class="name">이름</th>
		<th class="nyamnum">식사 횟수</th>
	</thead>
	</tr>
	<%
		for (int i = 0; i < nyamRanking.size(); i++) {
			count++;
			String id = nyamRanking.get(i).get("id");
			String num = nyamRanking.get(i).get("nyamNum");
			String name = nyamRanking.get(i).get("name");
			if(id.equals("123456"))
				continue;
	%>
	<tr>
		<td><%=count%></td>
		<td><a
			href="/nyam/admin/individual?studentId=<%=nyamRanking.get(i).get("id")%>&year=<%=year%>&month=<%=month%>">
				<%=id%>
		</a></td>
		<td><%=name%></td>
		<td><%=num%></td>
	</tr>

	<%
		}
	%>
</table>

<%@include file="/admin/foot.jsp"%>