<%--
  Created by IntelliJ IDEA.
  User: mycubes-pc
  Date: 02.12.19
  Time: 15:40
--%>
<%@ page import="grailslibrary.Author" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table border="5" , style="border-style: double" width="85%">
    <thead style="background-color: lightgoldenrodyellow">
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Country</th>
        <th>City</th>
        <th>Books</th>
    </tr>
    </thead>
    <g:each in="${Author.findAll()}" var="author" varStatus="status">
        <tr>
            <td>${author.id}</td>
            <td>${author.firstName}</td>
            <td>${author.lastName}</td>
            <td>${author.country}</td>
            <td>${author.city}</td>
            <td>
                <g:if test="${author.books.size() > 0}">
                    <g:each in="${author.books}" varStatus="book_index">
                        <g:set var="books" value="${author.books.get(book_index.index).name}"/><g:out value="${books}, "/>
                    </g:each></g:if>
            </td>
        </tr>
    </g:each>
</table>
</body>
</html>