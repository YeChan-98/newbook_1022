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
        <br><br>
          <h1>국내도서</h1>
         <br><br>   
              <div class="write"><a href="productWrite.do">상품 등록</a></div>
              <br>
            
            <c:forEach var="product" items="${productList}">
			<div class="product">             
              <tr class="record">
                <td>${product.code}</td>
                <td><div class="list"><img src="upload/${product.pictureUrl}"></div></td><br>
                <td>${product.productName}</td><br>
                <td>${product.price} 원</td><br>
                <td><a href="productUpdate.do?code=${product.code}">상품 수정</a>
                </td>
                <td><a href="productDelete.do?code=${product.code}">상품 삭제</a><br>
                </td>
              </tr>
               </div>
            </c:forEach>
        </div>
        <br><br>
        <%@ include file="../footer.jsp" %>
      </body>
    </html>