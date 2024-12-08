<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Products</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/><br/>
 <h3 align="center">View All Customers </h3>
 <table align="center" border=2>
 <tr>
 <th>ID</th>
 <th>NAME</th>
 <th>DESCRIPTION</th>
 <th>COST</th>
 <th>IMAGE</th>
 </tr>
 
 <c:forEach items="${products}" var="products">
 <tr>
 <td><c:out value="${products.id}"></c:out></td>
 <td><c:out value="${products.name}"></c:out></td>
 <td><c:out value="${products.description}"></c:out></td>
 <td><c:out value="${products.cost}"></c:out></td>
 <td>
 <img src="displayproductimage?id=${product.id }"  />
 </td>
 </tr>
 </c:forEach>
 
 </table>
    
    
    
    
    
 <%@ include file="footer.jsp" %>
</body>
</html>