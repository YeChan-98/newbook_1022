<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <!DOCTYPE html>
    <html>
      <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>알라딘</title>

    <link rel="stylesheet" href="css/shopping.css">


</head>
      <body>
      <%@ include file="../header.jsp" %>
      
        <div id="wrap" align="center">
          <h1>국내도서</h1>
          <table class="list">
            <tr>
              <td colspan="5" style="border: white; text-align: right"><a href="productWrite.do">상품 등록</a></td>
            </tr>
            <tr>
              <th>번호</th>
              <th>이미지</th>
              <th>이름</th>
              <th>가격</th>
              <th>수정</th>
              <th>삭제</th>
            </tr>
            <c:forEach var="product" items="${productList}">
              <tr class="record">
                <td>${product.code}</td>
                <td><div class="list"><img src="upload/${product.pictureUrl}"></div></td>
                <td>${product.productName}</td>
                <td>${product.price} 원</td>
                <td><a href="productUpdate.do?code=${product.code}">상품 수정</a>
                </td>
                <td><a href="productDelete.do?code=${product.code}">상품 삭제</a>
                </td>
              </tr>
            </c:forEach>
          </table>
        </div>
        
        <%@ include file="../footer.jsp" %>
      </body>
    </html>