<%--
  Created by IntelliJ IDEA.
  User: gulnaz
  Date: 14.06.2018
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <jsp:include page="htmlhead.jsp" />
</head>
<body>
<jsp:include page="header.jsp" />

<c:if test="${!empty getBooks}">
    <table class="books striped">
        <tr>
            <th class="id">Id</th>
            <th class="title">Title</th>
            <th>Author</th>
            <th>Print Year</th>
            <th>Read Already</th>
            <th>Actions</th>
        </tr>

        <c:forEach items="${getBooks}" var="book">
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

<div id="pagination">
    <c:url value="/books" var="prev">
        <c:param name="page" value="${page-1}"/>
    </c:url>
    <c:if test="${page > 1}">
        <a href="<c:out value="${prev}" />" class="button">Prev</a>
    </c:if>
    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
        <c:choose>
            <c:when test="${page == i.index}">
                <span class="button primary">${i.index}</span>
            </c:when>
            <c:otherwise>
                <c:url value="/books" var="url">
                    <c:param name="page" value="${i.index}"/>
                </c:url>
                <a href='<c:out value="${url}" />' class="button">${i.index}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:url value="/books" var="next">
        <c:param name="page" value="${page + 1}"/>
    </c:url>
    <c:if test="${page + 1 <= maxPages}">
        <a href='<c:out value="${next}" />' class="button">Next</a>
    </c:if>
</div>

</body>
</html>
