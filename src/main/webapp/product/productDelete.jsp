<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>

<body>
<%@ include file="../header.jsp" %>
<div id="wrapup" align="center">
<br><br>
<h1>상품 삭제 - 관리자 페이지</h1>
<br><br>
<form method="post" action="productDelete.do">
	<table>
		<tr>
			<td>
				<c:choose>
					<c:when test="${empty product.pictureUrl}">
						<div class="list"><img src="upload/noimage.gif"></div>
					</c:when>
					<c:otherwise>
						<div class="list"><img src="upload/${product.pictureUrl}"></div>
					</c:otherwise>
				</c:choose>
			</td>	
			<td>
				<table>
					<tr>
						<th>줄거리</th>
						<td><div style="height: 220px; width: 100%">${product.description }</div></td>
					</tr>
				</table>
			</td>	
		</tr>
	</table>
	<br>
	<input type="hidden" name="code" value="${product.code}">
	<div class="buttonst"><input type="submit" value="삭제"></div>
	<div class="buttonst"><input type="button" value="목록" onclick="location.href='productList.do'"></div>
</form>
</div>
<%@ include file="../footer.jsp" %>
</body>

</html>