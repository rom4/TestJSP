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
</head>
<body>
<table border="1">
    <caption>������� �������</caption>
    <tr>
        <th>��������</th>
        <th>�����</th>
        <th>�������������</th>
        <th>�����������</th>
        <th>�������</th>
    </tr>
    <c:forEach var="Department" items="${requestScope.Departments}">
        <tr>
            <td>${Department.name} </td>
            <td> ${Department.city}</td>
            <td>
                <form method="post" action="controller">
                    <input type="hidden" name="page" value="EditDepartment">
                    <input type="hidden" name="departmentID" value=${Department.departmentID}>

                    <p><input type="submit" name="submit" value="�������������"></p>
                </form>
            </td>
            <td>
                <form method="post" action="controller">
                    <input type="hidden" name="page" value="Employers">
                    <input type="hidden" name="pageType" value="byDepartment">
                    <input type="hidden" name="departmentID" value=${Department.departmentID}>

                    <p><input type="submit" name="submit" value="������"></p>
                </form>
            </td>
            <td>
                <form method="post" action="controller">
                    <input type="hidden" name="page" value="DeleteDepartment">
                    <input type="hidden" name="departmentID" value=${Department.departmentID}>

                    <p><input type="submit" name="submit" value="�������"></p>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>


<table border="0">
    <tr>
        <td valign="bottom">
            <form method="post" action="controller">
                <input type="hidden" name="page" value="AddDepartment">

                <p><input type="submit" name="submit" value="�������� ����� "></p>
            </form>
        </td>
        <td>
            <form method="post" action="controller">
                <input type="hidden" name="page" value="home">
                <input type="submit" name="submit" value="�� �������">
            </form>
        </td>


    </tr>
</table>

</body>
</html>