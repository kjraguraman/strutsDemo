<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Employee Id</title>
</head>
<body>
<div class="container">
    <div class="col-sm-4 mx-auto">
        <div class="card">
            <div class="card-head">

            </div>
            <div class="card-body p-2">
                <html:form action="getEmpDetails">
                    <div class="form-group mb-2">
                        Employee Id<span class="text-danger">*</span>
                        <html:text styleClass="form-control form-control-sm" property="id"/>
                        <span class="text-danger">${empIdEmpty}${userNotFound}</span>
                    </div>
                    <div class="form-group text-center mt-3">
                        <html:submit styleClass="btn btn-success">Get Details</html:submit>
                    </div>
                </html:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
