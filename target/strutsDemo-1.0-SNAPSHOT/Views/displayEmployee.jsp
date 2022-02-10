<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Details</title>
</head>
<body>
<table border="2px solid" style=" text-align:center;margin-left: auto;
  margin-right: auto;margin-top: 5rem">
    <thead><th colspan="2">Employee Details</th></thead>
    <tbody>
        <tr>
            <th>Id</th>
            <td>${employee.getId()}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${employee.getName()}</td>
        </tr>
        <tr>
            <th>Department</th>
            <td>${employee.getDepartment()}</td>
        </tr>
        <tr>
            <th>Salary</th>
            <td>${employee.getSalary()}</td>
        </tr>
        <tr>
            <th>Age</th>
            <td>${employee.getMobile()}</td>
        </tr>
        <tr>
            <th>Mobile</th>
            <td>${employee.getMobile()}</td>
        </tr>
    </tbody>
    <tfoot><td colspan="2"><html:link action="index">Back</html:link></td></tfoot>
</table>
</body>
</html>
