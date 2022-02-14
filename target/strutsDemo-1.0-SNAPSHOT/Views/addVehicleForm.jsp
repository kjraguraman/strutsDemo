<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Vehicle Form</title>
</head>
<body>
<h1 class="text-success text-center">${success}</h1>
<div class="container">
    <div class="col-lg-6 mx-auto">
        <div class="card">
            <div class="card-header bg-primary text-white">
                Add Vehicle
            </div>
            <div class="card-body p-2">
                <html:form action="addVehicle" onsubmit="return validateAddVehicleForm(this)">
                    <html:javascript formName="AddVehicleForm"/>
                    <div class="form-group mb-2">
                        Vechile Reg.No<span class="text-danger">*</span>
                        <html:text styleClass="form-control" property="regNo"/>
                        <span class="text-danger"><html:errors property="regNo"/></span>
                    </div>
                    <div class="form-group mb-2">
                        Vehicle Company Name<span class="text-danger">*</span>
                        <html:select styleClass="form-select" property="companyName">
                            <html:option value="" ></html:option>
                            <html:option value="Hero">Hero</html:option>
                            <html:option value="Honda">Honda</html:option>
                            <html:option value="Suzuki">Suzuki</html:option>
                            <html:option value="Tvs">Tvs</html:option>
                            <html:option value="Yamaha">Yamaha</html:option>
                        </html:select>
                        <span class="text-danger"><html:errors property="companyName"/></span>
                    </div>
                    <div class="form-group mb-2">
                        EmployeeId<span class="text-danger">*</span>
                        <html:text styleClass="form-control" property="empId"/>
                        <span class="text-danger text-center">${empIdNotFound}</span>
                        <span class="text-danger"><html:errors property="empId"/></span>
                    </div>
                    <div class="form-group text-center mt-3">
                        <html:submit styleClass="btn btn-success">Add Vehicle</html:submit>
                    </div>
                </html:form>
            </div>
            <%--                    <div class="card-footer text-center">--%>
            <%--                        <html:link action="index">Back</html:link>--%>
            <%--                    </div>--%>
        </div>
    </div>
</div>
</body>
</html>
