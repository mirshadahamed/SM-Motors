<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User reviews</title>
    <link rel="stylesheet" type="text/css" href="css/feedbackview.css">
</head>

<body>
<jsp:include page="header2.jsp" />


<center><h1>Reviews Of Users</h1></center>
<div class="partsfeedback">
    <c:forEach var="revie" items="${reviList}">
        <div class="user-card">
            <h2>${revie.rtype}</h2> 
               <h3>${revie.pname}</h3> 
            <p> ${revie.msg}</p> 
            <p> ${revie.rate}</p> 
            <div class="actions">
                           <!-- --option -->                 
            </div>
        </div>
        <hr style="margin: 20px 0; border: 1px solid #ddd;">
    </c:forEach>
</div>

</body>
</html>
