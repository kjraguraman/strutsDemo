<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Details</title>
<%--    <link href="css/bootstrap.min.css" rel="stylesheet">--%>
</head>
<body>
<div class="container">
    <div class="col-md-6 mx-auto">
        <div class="table-responsive">
            <table class="table table-bordered table-hover text-center">
                <thead><th class="bg-primary text-white" colspan="2">Employee Details</th></thead>
                <tbody>
                <tr>
                    <th>Id</th>
                    <td>${employee.getEmpId()}</td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td>${employee.getEmpName()}</td>
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
                    <td>${employee.getAge()}</td>
                </tr>
                <tr>
                    <th>Mobile</th>
                    <td>${employee.getMobile()}</td>
                </tr>
                </tbody>
<%--                <tfoot><td class="bg-light" colspan="2"><html:link action="index">Back</html:link></td></tfoot>--%>
            </table>
        </div>
    </div>
</div>
</body>
</html>
