<%--
  Created by IntelliJ IDEA.
  User: gulnaz
  Date: 16.06.2018
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="htmlhead.jsp" />
</head>
<body>
<jsp:include page="header.jsp" />
<h1>${pageTitle}</h1>
<p>Result for: <i>${key}</i></p>

<c:if test="${!empty resultList}">
    <table class="books striped">
        <tr>
            <th class="id">Id</th>
            <th class="title">Title</th>
            <th>Author</th>
            <th>Print Year</th>
            <th>Read Already</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${resultList}" var="book">
            <tr>
                <td class="id">${book.id}</td>
                <td class="title"><a href="<c:url value="/books/${book.id}"/>">${book.title}</a></td>
                <td>${book.author}</td>
                <td>${book.printYear}</td>
                <td>
                    <c:if test="${book.readAlready}">
                        <mark class="tertiary">read</mark>
                    </c:if>
                    <c:if test="${!book.readAlready}">
                        <mark>unread</mark>
                    </c:if>
                </td>
                <td>
                    <a href="<c:url value="/books/${book.id}/edit"/>">Edit</a>
                    <a href="<c:url value="/books/${book.id}/delete"/>">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${empty resultList}">
    <p>No book was found.</p>
</c:if>

</body>
</html>
