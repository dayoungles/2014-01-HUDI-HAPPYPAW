<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/user/head.jsp"%>

<link rel="stylesheet" type="text/css"
	href="/nyam/board/css/writing.css">
	
<div class="content formBox">
	<div class="title">정직한 식사 신청</div>
	<form action="/nyam/board/sendContent" method="POST"
		enctype="multipart/form-data">
		<%
			if (request.getAttribute("board") != null) {
		%>
		<input type="hidden" name="no" value="${board.writingNo }" />
		<%
			}
		%>
		<div class="writing">
			<input type="text" name="title" value="${board.title}"
				placeholder="Title"><br />

			<textarea name="content" placeholder="Content">${board.content }</textarea>
			<br />
		</div>
		<div class="filebox">
			<c:if test="${board.fileName != null}"></c:if>
			<input type="file" name="file"><br />
		</div>
		<div class="button">
			<input type="submit" class="btn" value="SEND">
		</div>

	</form>
</div>

<%@include file="/user/foot.jsp"%>