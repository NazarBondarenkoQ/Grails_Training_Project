<%--
  Created by IntelliJ IDEA.
  User: mycubes-pc
  Date: 02.12.19
  Time: 16:25
--%>

<%@ page import="grailslibrary.Book" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table border="5" , style="border-style: double" width="85%">
    <thead style="background-color: lightgoldenrodyellow">
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Circulation</th>
        <th>Authors</th>
    </tr>
    </thead>
    <g:each in="${Book.findAll()}" var="book" >
        <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.circulation}</td>
            <td>
                <g:if test="${book.authors.size() > 0}">
                    <g:each in="${book.authors}" var="authors" status="i">
                        <g:set var="books" value="${book.authors[i]}"/><g:out value="${books}, "/>
                    </g:each></g:if>
            </td>
        </tr>
    </g:each>
</table>
</body>
</html>