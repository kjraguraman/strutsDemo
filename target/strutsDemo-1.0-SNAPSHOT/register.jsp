<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<h1 style="color: green;text-align: center">${success}</h1>
<h1 style="color: green;text-align: center">${failed}</h1>
<table style="margin-left: auto;
        margin-right: auto;margin-top: 3rem">
    <tbody>
        <html:form action="addEmployee" onsubmit="return validateRegForm(this)">
            <html:javascript formName="RegForm"/>
    <thead><th colspan="2" style="font-size: 25px">Add Employee</th></thead>
            <tr>
                <td>
                    Name
                </td>
                <td>
                    <html:text property="name"/>
                </td>
                <td>
                    <html:errors property="name"/>
                </td>
            </tr>
            <tr>
                <td>
                    Department
                </td>
                <td>
                    <html:select property="department">
                        <html:option value="" ></html:option>
                        <html:option value="Admin">Admin</html:option>
                        <html:option value="Development">Development</html:option>
                        <html:option value="HR">HR</html:option>
                        <html:option value="Network">Network</html:option>
                        <html:option value="QA">QA</html:option>
                    </html:select>
                </td>
                <td>
                    <html:errors property="department"/>
                </td>
            </tr>
            <tr>
                <td>
                    Salary
                </td>
                <td>
                    <html:text property="salary"/>
                </td>
                <td>
                    <html:errors property="salary"/>
                </td>
            </tr>
            <tr>
                <td>
                    Age
                </td>
                <td>
                    <html:text property="age"/>
                </td>
                <td>
                    <html:errors property="age"/>
                </td>
            </tr>
            <tr>
                <td>
                    Mobile
                </td>
                <td>
                    <html:text property="mobile"/>
                </td>
                <td>
                    <html:errors property="mobile"/>
                </td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr><td colspan="2" style="text-align: center" ><html:submit>Register</html:submit></td></tr>
        </html:form>
    </tbody>
<tfoot>
<td colspan="2" style="text-align: center" ><html:link action="index">Back</html:link></td>
</tfoot>
</table>
</body>
</html>
