<%--
  Created by IntelliJ IDEA.
  User: gulnaz
  Date: 14.06.2018
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="htmlhead.jsp" />
</head>
<body>
<jsp:include page="header.jsp" />
<h1>${pageTitle}</h1>

<c:url var="saveAction" value="/books/save"/>
<form:form action="${saveAction}" modelAttribute="book" method="post" cssClass="fluid" id="add-form">
    <fieldset>
        <legend>Book form</legend>
        <form:hidden path="id"/>
        <div class="row responsive-label">
            <div class="col-sm-12 col-md-2">
                <label for="title">Title</label>
            </div>
            <div class="col-sm-12 col-md">
                <form:input path="title" required = "required"/>
            </div>
        </div>
        <div class="row responsive-label">
            <div class="col-sm-12 col-md-2">
                <label for="description">Description</label>
            </div>
            <div class="col-sm-12 col-md">
                <spring:textarea path="description" required="required"/>
            </div>
        </div>
        <div class="row responsive-label">
            <div class="col-sm-12 col-md-2">
                <label for="author">Author</label>
            </div>
            <div class="col-sm-12 col-md">
                <c:if test="${empty book.title}">
                    <form:input path="author" required = "required"/>
                </c:if>
                <c:if test="${!empty book.title}">
                    <form:input readonly="true" path="author"/>
                </c:if>
            </div>
        </div>
        <div class="row responsive-label">
            <div class="col-sm-12 col-md-2">
                <label for="isbn">ISBN</label>
            </div>
            <div class="col-sm-12 col-md">
                <form:input path="isbn" required = "required"/>
            </div>
        </div>
        <div class="row responsive-label">
            <div class="col-sm-12 col-md-2">
                <label for="printYear">Print Year</label>
            </div>
            <div class="col-sm-12 col-md">
                <form:input path="printYear" required = "required"/>
            </div>
        </div>

        <input type="submit" value="Save" class="tertiary">

    </fieldset>
</form:form>

</body>
</html>
