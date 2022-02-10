<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<div style="text-align: center;margin-top: 5rem">
    <h1>Struts 1.x</h1>
    <html:link action="getEmployees">Display Employees</html:link><br><br>
    <html:link action="getEmpWithVeh" >Display Employees and Their Vehicles</html:link><br><br>
    <html:link action="register">Add new Employee</html:link><br><br>
    <html:form action="getEmpDetails">
        Enter Employee Id<br>
        <html:text property="id"/><br><span style="color: red">${empIdEmpty}${userNotFound}</span><br>
        <html:submit>Get Details</html:submit>
    </html:form>
</div>
</body>
</html>