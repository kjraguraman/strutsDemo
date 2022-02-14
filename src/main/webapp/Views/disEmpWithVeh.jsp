<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees With Vehicles</title>
<%--    <link href="css/bootstrap.min.css" rel="stylesheet">--%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-8 mx-auto">
            <div class="table-responsive">
                <div style="max-height:100%;overflow:scroll;">
                    <table class="table table-bordered table-hover text-center">
                        <thead class="bg-primary text-white" style="position:sticky;top:0;inset-block-end:0;">
                            <th>Emp Id</th>
                            <th>Emp Name</th>
                            <th>Vehicle Name</th>
                            <th>Vehicle Reg.No</th>
                        </thead>
                        <tbody>
                        <logic:iterate name="employeesList" id="employee">
                            <tr>
                                <td>${employee.getEmpId()}</td>
                                <td>${employee.getEmpName()}</td>
                                <td>${employee.getVehicleName()}</td>
                                <td>${employee.getVehicleRegNo()}</td>
                            </tr>
                        </logic:iterate>
                        </tbody>
                        <%--            <tfoot>--%>
                        <%--                <td colspan="4" class="bg-light"><html:link action="index">Back</html:link></td>--%>
                        <%--            </tfoot>--%>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
