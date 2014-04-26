<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*, java.util.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {
	border: solid 1px black;
}

td {
	border: solid 1px black;
}
</style>
</head>
<body>
	<%
		ArrayList<NyamList> nyamList = (ArrayList<NyamList>) request
				.getAttribute("nyamList");
	%>
	<table>
		<tr>
		<thead>
			<td>id</td>
			<td>name</td>
			<td>nyamnum</td>
		</thead>
		</tr>
		<%
			for (int i = 0; i < nyamList.size(); i++) {
		%>
		<tr>
			
				<td>
					<a href = "/nyam/admin/individual?studentId=<%=nyamList.get(i).getId()%>">
						<%=nyamList.get(i).getId()%>
					</a>
				</td>
				<td><%=nyamList.get(i).getName()%></td>
			<td><%=nyamList.get(i).getNyamNum()%></td>
		</tr>

		<%
			}
		%>
	</table>
	<form action="/nyam/admin/exportExcel" method="POST">
		<button class="export">export</button>
	</form>
</body>
</html>