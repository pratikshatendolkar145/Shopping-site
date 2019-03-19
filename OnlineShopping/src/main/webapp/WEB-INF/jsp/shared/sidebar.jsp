<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- Page Content -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="col-lg-3">

          <h1 class="my-4">Shop Name</h1>
          <div class="list-group">
          <c:forEach var="c" items="${clist }">
            <a href="sortByName${c.categoryId}" class="list-group-item">${c.categoryName }</a>
            </c:forEach>
          </div>

        </div>
        <!-- /.col-lg-3 -->
</body>
</html>