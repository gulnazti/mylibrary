<%--
  Created by IntelliJ IDEA.
  User: gulnaz
  Date: 18.06.2018
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<header class="row">
    <span class="logo"><a href="<c:url value="/books"/>">Books</a></span>
    <a href="<c:url value="/books/new"/>" class="button col-sm col-md" id="addbook">Add Book</a>

    <c:url var="searchAction" value="/books/result"/>
    <form:form action="${searchAction}" method="post" cssClass="col-sm col-md input-group" id="search">
        <label>Search by title</label>
        <input type="search" width="100" name="title">
        <input type="submit" value="search">
    </form:form>
</header>
