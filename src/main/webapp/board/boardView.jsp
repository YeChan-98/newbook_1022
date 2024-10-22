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
    <script type="text/javascript" src="script/board.js"></script>
</head>

<body>
<%@ include file="../header.jsp" %>
<div id="wrapview" align="center">
<br><br>
<h1>추천 상세보기</h1>
<br><br>
<table>
	<tr>
	<th>작성자</th>
	<td>${board.username }</td>
	<th>이메일</th>
	<td>${board.email }</td>
	</tr>
	<tr>
	<th>작성일</th>
	<td><fmt:formatDate value="${board.writedate }"/></td>
	<th>조회수</th>
	<td>${board.readcount }</td>
	</tr>
	<tr>
	<th>추천 도서</th>
	<td colspan="3"><pre>${board.content }</pre></td>
	</tr>
	<tr>
	<th>추천하는 이유</th>
	<td colspan="3"><pre>${board.content }</pre></td>
	</tr>
</table>
<br>
<br>
<div class="buttonst2"><input type="button" value="추천글 수정" onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'update')"></div>
<div class="buttonst2"><input type="button" value="추천글 삭제" onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'delete')"></div>
<div class="buttonst2"><input type="button" value="추천글 목록" onclick="location.href='BoardServlet?command=board_list'"></div>
<div class="buttonst2"><input type="button" value="추천글 등록" onclick="location.href='BoardServlet?command=board_write_form'"></div>
</div>
<%@ include file="../footer.jsp" %>
</body>

</html>