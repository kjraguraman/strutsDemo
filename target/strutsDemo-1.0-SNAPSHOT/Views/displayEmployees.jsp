<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <link href="css/bootstrap.min.css" rel="stylesheet">--%>
    <title>Employees List</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-8 mx-auto">
            <div class="table-responsive">
                <div style="max-height:100%;overflow:scroll;">
                    <table class="table table-bordered table-hover text-center">
                        <thead class="bg-primary text-white" style="position:sticky;top:0;inset-block-end:0;">
                        <th>Id</th>
                        <th>Name</th>
                        <th>Department</th>
                        <th>Salary</th>
                        <th>Age</th>
                        <th>Mobile</th>
                        </thead>
                        <tbody>
                        <logic:iterate name="employeesList" id="employee">
                            <tr>
                                <td>${employee.getEmpId()}</td>
                                <td>${employee.getEmpName()}</td>
                                <td>${employee.getDepartment()}</td>
                                <td>${employee.getSalary()}</td>
                                <td>${employee.getAge()}</td>
                                <td>${employee.getMobile()}</td>
                            </tr>
                        </logic:iterate>
                        </tbody>
                        <%--                <tfoot>--%>
                        <%--                    <td class="bg-light" colspan="6"><html:link action="index">Back</html:link></td>--%>
                        <%--                </tfoot>--%>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
