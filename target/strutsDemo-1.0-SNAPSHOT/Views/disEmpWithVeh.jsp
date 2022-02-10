<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees With Vehicles</title>
</head>
<body>
<table border="2px solid" style=" text-align:center;margin-left: auto;
  margin-right: auto;margin-top: 5rem">
    <thead>
        <th>Emp Id</th>
        <th>Emp Name</th>
        <th>Vehicle Name</th>
        <th>Vehicle Reg.No</th>
    </thead>
    <tbody>
    <c:forEach items="${empWithVehList}" var="employee">
        <tr>
            <td>${employee.getEmpId()}</td>
            <td>${employee.getEmpName()}</td>
            <td>${employee.getVehicleName()}</td>
            <td>${employee.getVehicleRegNo()}</td>
        </tr>
    </c:forEach>
    </tbody>
    <tfoot>
        <td colspan="4"><html:link action="index">Back</html:link></td>
    </tfoot>
</table>
</body>
</html>
