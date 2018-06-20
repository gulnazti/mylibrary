<%--
  Created by IntelliJ IDEA.
  User: gulnaz
  Date: 14.06.2018
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="htmlhead.jsp" />
</head>
<body>
<jsp:include page="header.jsp" />

<h1>${pageTitle}</h1>
<a href="<c:url value="/books/${book.id}/edit"/>" class="button small">Edit</a>
<a href="<c:url value="/books/${book.id}/delete"/>" class="button small">Delete</a>
<c:if test="${!book.readAlready}">
    <a href="<c:url value="/books/${book.id}/markread" /> " class="button small">Mark as read</a>
</c:if>

<div class="row">
    <div class="col-md-3 col-sm-12">
        <div class="card fluid">
            <p>Book status:
                <c:if test="${book.readAlready}">
                    <span><mark class="tertiary">read</mark></span>
                </c:if>

                <c:if test="${!book.readAlready}">
                    <span><mark>unread</mark></span>
                </c:if>
            </p>
            <p><strong>Author:</strong> ${book.author}</p>
            <p><strong>ISBN:</strong> ${book.isbn}</p>
            <p><strong>Print Year:</strong> ${book.printYear}</p>
        </div>
    </div>

    <div class="col-md col-sm-12">
        <p>${book.description}</p>
    </div>
</div>

</body>
</html>
