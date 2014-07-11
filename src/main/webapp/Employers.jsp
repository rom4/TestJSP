<%--
  Created by IntelliJ IDEA.
  User: rom4
  Date: 07.07.14
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=windows-1251" language="java" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>DEPARTMENTS</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <link rel="stylesheet" href="style.css" type="text/css"/>
</head>

<body>

<div id="pagewidth">
    <div id="header">
        <h1 id="logo">DEPARTMENTS </h1>

        <h2 id="slogan">table with employers...</h2>
    </div>

    <table border="0" align="center">
        <tr>
            <td align="center" valign="top">
                <form method="get" action="AddEmploye.html">
                    <input type="hidden" name="page" value="AddEmploye">
                    <input type="hidden" name="pageType" value="AddEmployeWithDep">
                    <input type="hidden" name="departmentID" value=${departmentID}>

                    <p><input type="submit" name="submit" value="�������� ����������"></p>
                </form>
            </td>
        </tr>
    </table>

    <table class="CSSTableGenerator" border="1" align="center">
        <tr>
            <td>���</td>
            <td>�������</td>
            <td>E-mail</td>
            <td>�����</td>
            <td>���� ��������</td>
            <td>�������������</td>
            <td>�������</td>
        </tr>
        <c:forEach var="Employe" items="${requestScope.Employers}">
            <tr>
                <td> ${Employe.firstName}</td>
                <td> ${Employe.lastName} </td>
                <td> ${Employe.email} </td>
                <td> ${Employe.salary} </td>
                <td> ${Employe.birthday} </td>

                <td>
                    <form metdod="get" action="EditEmploye.html">
                        <input type="hidden" name="page" value="EditEmploye">
                        <input type="hidden" name="pageType" value="EditEmployeDep">
                        <input type="hidden" name="employeID" value=${Employe.employeID}>
                        <input type="hidden" name="departmentID" value=${Employe.departmentID}>

                        <p><input CLASS="button" type="submit" name="submit" value="�������������"></p>
                    </form>
                </td>
                <td>
                    <form metdod="get" action="DeleteEmploye.html">
                        <input type="hidden" name="page" value="DeleteEmploye">
                        <input type="hidden" name="EmployeID" value=${Employe.employeID}>

                        <p><input CLASS="button" type="submit" name="submit" value="�������"></p>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div id="footer">
        <p><a href="home.html/">Homepage</a> | <a href="contact.html">contact</a> | <a
                href="http://validator.w3.org/check?uri=referer">html</a> | <a
                href="http://jigsaw.w3.org/css-validator">css</a> | &copy; 2007 Anyone | Design by <a
                href="http://www.mitchinson.net"> www.mitchinson.net</a> | tdis work is licensed under a <a
                rel="license" target="_blank" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons
            Attribution 3.0 License</a></p>
    </div>
</div>

</body>
</html>