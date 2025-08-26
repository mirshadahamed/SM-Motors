<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback View</title>
    <link rel="stylesheet" type="text/css" href="css/feedbackview.css">
</head>

<body>
<jsp:include page="header2.jsp" />

<div class="partsfeedback">
    <c:forEach var="feed" items="${feedbackList}">
        <div class="user-card">
            <h2>${feed.name}</h2> 
               <h3>${feed.subject}</h3> 
            <p> ${feed.message}</p> 
            <div class="actions">
                <button><a href="feedbackupadate.jsp?email=${feed.email}">Update</a></button>
                <button><a href="feedbackdelete.jsp?email=${feed.email}">Delete</a></button>
            </div>
        </div>
        <hr style="margin: 20px 0; border: 1px solid #ddd;">
    </c:forEach>
</div>

</body>
</html>
