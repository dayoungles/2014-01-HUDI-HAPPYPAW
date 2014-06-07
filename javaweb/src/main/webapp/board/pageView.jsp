<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Board"%>
<%@include file="/user/head.jsp" %>
	${board}
	no: ${board.writingNo}<br/>
	writer: ${board.userId}<br/>
	title: ${board.title }<br/>
	content: ${board.content }<br/>

	fileName: ${board.fileName }<br/>
	
	recommend: ${recommendInfo.recommend}<br/>
	not recommend: ${recommendInfo.notRecommend }<br/>
	
	<a href = "/nyam/board/recommend?no=${board.writingNo}"><button class="recommend">LIKE</button></a>
	<a href = "/nyam/board/notRecommend?no=${board.writingNo}"><button class="notRecommend">DISLIKE</button></a>
	<a href = "/nyam/board/delete?no=${board.writingNo}"><button class="delete">Delete</button></a>
	<a href = "/nyam/board/modify?no=${board.writingNo}"><button class="modify">Modify</button></a>
	<%Board board = (Board)request.getAttribute("board"); %>
	<%if(board.getFileName() != null) {%>
		<img src="/images/${board.fileName}" alt="file"/>
	<%} %>
	<script>
		var writer_id = ${board.userId};
		var btnDelete =document.querySelector(".delete");
		var btnModify = document.querySelector(".modify");
		if(writer_id !== session){
			btnDelete.style.display = "none";
			btnModify.style.display = "none";
		}
		
	</script>
<%@include file="/user/foot.jsp"%>