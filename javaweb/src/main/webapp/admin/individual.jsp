<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../css/reset.css" />
		<link rel="stylesheet" type="text/css" href="../css/layout.css" />
		<link rel="stylesheet" type="text/css"
			href="/nyam/user/css/user_nyamHistory.css" />
		<script src="/nyam/js/daylight.js"></script>
			<script>
		<%HashMap<String, Integer> map = (HashMap<String, Integer>) request
				.getAttribute("nyamPerDay");
		
		DateInfo info = (DateInfo)request.getAttribute("dateInfo");
		String id = (String)request.getAttribute("id");
		String name = (String)request.getAttribute("name");	
		
		int year = info.getYear();
		int month =  info.getMonth();
		int dayOfMonth = info.getDayOfMonth();
		int yoil = info.getYoil();
		int week = info.getWeek();
		int day = 1;%>
		var yoil = <%=yoil%>;
		console.log(yoil);
		var day = 1;
		var dayOfMonth = <%=dayOfMonth%>
		var week = <%=week%>
		
		$(document).ready(function() {
			var stamp = {"-1": 0
			<%for(String date : map.keySet()) {
					out.println(","+date+" : "+map.get(date));
			}%>
			
			};
			
			var trWeek = $(".week");
			for(var i = 1; i < week ; i++){
				trWeek.after(trWeek.html());
			}
			
			$(".calendar td").each(function(td, index) {
				if(index +1 < yoil){
					return;
				}else if(day > dayOfMonth){
					return;  //위에것이랑 합치기.	
				}else{
					
					$(this).find(".day").html(day);
					
					var stamp_print = $(".stamp");
					if(day in stamp){
						var stamp_num = stamp[day];
						for(var i =0; i<stamp_num;i++){
							$(this).find(".stamp_area").append('<div class="stamp"></div>');
							console.log("test");
						}
					}
					++day;
				}
			});
		});
	</script>
	
	</head>
	
	<body>
	

		<section> 
			<header>
				<p class="logo">넥스트인의 정식</p>
			</header> 
			<article>
				<div class="title"><%=id%>
					<%=name%></div>
				<div class="month"><%=year%>년
					<%=month + 1%>월
				</div>
		
			<table class="calendar">
				<thead>
					<tr id="record">
						<th>SUN</th>
						<th>MON</th>
						<th>TUE</th>
						<th>WED</th>
						<th>THR</th>
						<th>FRI</th>
						<th>SAT</th>
					</tr>
				</thead>
				<tbody>
					<tr class="week">
						<td><div class="day"></div>
							<div class="stamp_area"></div></td>
						<td><div class="day"></div>
							<div class="stamp_area"></div></td>
						<td><div class="day"></div>
							<div class="stamp_area"></div></td>
						<td><div class="day"></div>
							<div class="stamp_area"></div></td>
						<td><div class="day"></div>
							<div class="stamp_area"></div></td>
						<td><div class="day"></div>
							<div class="stamp_area"></div></td>
						<td><div class="day"></div>
							<div class="stamp_area"></div></td>
					</tr>
		
				</tbody>
		
			</table>
				</article>
		</section>
		<aside>
			<div class="login_box">
				<p>이름: 관리자</p>
				<p>
					<a href="./logout">logout</a>
				</p>
			</div>
			<div class="menu">
				<ul class="menu_ul">
					<li><a href="/nyam/admin/nyamHistory">메인</a></li>
					<li><a href="/nyam/admin/manageRest">지정식당 관리</a></li>
					<li><a href="/nyam/admin/nyamHistory">전체 학생 이용 기록</a></li>
					<li><a href="/nyam/admin/restaurantHistory">식당별 이용 횟수</a></li>
					<li><a href="">지정식당 신청 게시판</a></li>
				</ul>
			</div>
		</aside>
		

	</body>
</html>