<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="css/board.css">
</head>

<body>
<%@ include file="../header.jsp" %>
	<div id="wrap" align="center">
	<br><br>
		<h1>추천 리스트</h1>
		<br><br>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><div class="write"><a
					href="BoardServlet?command=board_write_form">게시글 등록</a></div></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>추천도서 제목</th>
				<th>추천자</th>
				<th>추천하는 이유</th>
				<th>조회수</th>
			</tr>
			<c:forEach var="board" items="${boardList }">
				<tr class="record">
					<td>${board.num }</td>
					<td><a href="BoardServlet?command=board_view&num=${board.num}">
							${board.title } </a></td>
					<td>${board.username}</td>
					<td>${board.content}</td>
					<td>${board.readcount}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<%@ include file="../footer.jsp" %>
</body>

</html>