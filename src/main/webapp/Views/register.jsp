<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1 style="color: green;text-align: center">${success}</h1>
<h1 style="color: green;text-align: center">${failed}</h1>
    <div class="container my-5">
            <div class="col-lg-6 mx-auto">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        Register
                    </div>
                    <div class="card-body p-2">
                        <html:form action="addEmployee" onsubmit="return validateRegForm(this)">
                            <html:javascript formName="RegForm"/>
                            <div class="form-group mb-2">
                                Name<span class="text-danger">*</span>
                                <html:text styleClass="form-control" property="name"/>
                                <span class="text-danger"><html:errors property="name"/></span>
                            </div>
                            <div class="form-group mb-2">
                                Department<span class="text-danger">*</span>
                                <html:select styleClass="form-select" property="department">
                                    <html:option value="" ></html:option>
                                    <html:option value="Admin">Admin</html:option>
                                    <html:option value="Development">Development</html:option>
                                    <html:option value="HR">HR</html:option>
                                    <html:option value="Network">Network</html:option>
                                    <html:option value="QA">QA</html:option>
                                </html:select>
                                <span class="text-danger"><html:errors property="department"/></span>
                            </div>
                            <div class="form-group mb-2">
                                Salary<span class="text-danger">*</span>
                                <html:text styleClass="form-control" property="salary"/>
                                <span class="text-danger"><html:errors property="salary"/></span>
                            </div>
                            <div class="form-group mb-2">
                                Age<span class="text-danger">*</span>
                                <html:text styleClass="form-control" property="age"/>
                                <span class="text-danger"><html:errors property="age"/></span>
                            </div>
                            <div class="form-group mb-2">
                                Mobile<span class="text-danger">*</span>
                                <html:text styleClass="form-control" property="mobile"/>
                                <span class="text-danger"><html:errors property="mobile"/></span>
                            </div>
                            <div class="form-group text-center mt-3">
                                <html:submit styleClass="btn btn-success">Register</html:submit>
                            </div>
                        </html:form>
                    </div>
                    <div class="card-footer text-center">
                        <html:link action="index">Back</html:link>
                    </div>
                </div>
            </div>
    </div>
</body>
</html>
