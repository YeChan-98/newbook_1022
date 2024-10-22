<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="css/board.css">
<script type="text/javascript" src="script/board.js"></script>
</head>

<body>
<%@ include file="../header.jsp" %>
	<div id="wrapboard" align="center">
	<br><br>
		<h1>게시글 등록</h1>
		<br><br>
		<form name="frm" method="post" action="BoardServlet">
			<input type="hidden" name="command" value="board_write">
			<table>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="username"> * 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass"> * 필수 (게시물 수정
						삭제시 필요합니다.)</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<th>추천도서</th>
					<td><input type="text" size="70" name="title"> * 필수</td>
				</tr>
				<tr>
					<th>추천하는 이유</th>
					<td><textarea cols="70" rows="15" name="content"></textarea></td>
				</tr>
			</table>
			<br> <br> <div class="buttonst"><input type="submit" value="등록"
				onclick="return boardCheck()"></div> <div class="buttonst"><input type="reset"
				value="다시 작성"></div> <div class="buttonst"><input type="button" value="목록"
				onclick="location.href='BoardServlet?command=board_list'"></div>
		</form>
	</div>
<%@ include file="../footer.jsp" %>
</body>

</html>