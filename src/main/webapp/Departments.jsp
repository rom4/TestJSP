<%--
  Created by IntelliJ IDEA.
  User: rom4
  Date: 03.07.14
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=windows-1251" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>DEPARTMENTS</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="pagewidth">
    <div id="header">
        <h1 id="logo">DEPARTMENTS </h1>
        <h2 id="slogan">Table with Departments...</h2>
    </div>
<table class="CSSTableGenerator" align="center" border="1" >
        <tr>
            <td>��������</td>
            <td>�����</td>
            <td>�������������</td>
            <td>�����������</td>
            <td>�������</td>
        </tr>
        <c:forEach var="Department" items="${requestScope.Departments}">
            <tr>
                <td>${Department.name} </td>
                <td> ${Department.city}</td>
                <td>
                    <form method="get" action="EditDepartment.html">
                        <input type="hidden" name="page" value="EditDepartment">
                        <input type="hidden" name="departmentID" value=${Department.departmentID}>
                        <p><input CLASS="button"  type="submit" name="submit" value="�������������"></p>
                    </form>
                </td>
                <td>
                    <form method="get" action="Employers.html">
                        <input type="hidden" name="page" value="Employers">
                        <input type="hidden" name="pageType" value="byDepartment">
                        <input type="hidden" name="departmentID" value=${Department.departmentID}>
                        <p><input CLASS="button"  type="submit" name="submit" value="������"></p>
                    </form>
                </td>
                <td>
                    <form method="get" action="DeleteDepartment.html">
                        <input type="hidden" name="page" value="DeleteDepartment">
                        <input  type="hidden" name="departmentID" value=${Department.departmentID}>

                        <p><input CLASS="button" type="submit" name="submit" value="�������"></p>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </td>
    </table>
    <div id="footer">
        <p><a href="home.html">Homepage</a> | <a href="contact.html">contact</a> | <a href="http://validator.w3.org/check?uri=referer">html</a> | <a href="http://jigsaw.w3.org/css-validator">css</a> | &copy; 2007 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> | This work is licensed under a <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a></p>
    </div>
</div>
</body>
</html>