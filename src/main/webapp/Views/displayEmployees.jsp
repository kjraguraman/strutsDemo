<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees List</title>
</head>
<body>
<%--<logic:iterate name="employeeList" id="employee">--%>
<%--    Employee Id : <bean:write name="employee" property="id"/><br/>--%>
<%--    Employee Name : <bean:write name="employee" property="name"/><br/>--%>
<%--    Department : <bean:write name="employee" property="department"/><br/>--%>
<%--</logic:iterate>--%>
<table border="2px solid" style=" text-align:center;margin-left: auto;
  margin-right: auto;margin-top: 5rem">
    <thead>
        <th>Id</th>
        <th>Name</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Age</th>
        <th>Mobile</th>
    </thead>
    <tbody>
        <c:forEach items="${employeeList}" var="employee">
            <tr>
                <td>${employee.getId()}</td>
                <td>${employee.getName()}</td>
                <td>${employee.getDepartment()}</td>
                <td>${employee.getSalary()}</td>
                <td>${employee.getAge()}</td>
                <td>${employee.getMobile()}</td>
            </tr>
        </c:forEach>
    </tbody>
    <tfoot>
        <td colspan="6"><html:link action="index">Back</html:link></td>
    </tfoot>
</table>
</body>
</html>
