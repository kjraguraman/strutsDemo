<%@ taglib prefix="tiles" uri="http://struts.apache.org/tags-tiles"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row">
        <tiles:insert attribute="head" ignore="true"/>
    </div>
    <div class="row mt-5">
        <div class="col-sm-3 text-center">
            <tiles:insert attribute="menu" ignore="true"/>
        </div>
        <div class="col-sm-9">
            <div class="row">
                <tiles:insert attribute="bodyTop" ignore="true"/>
            </div>
            <div class="row mt-5">
                <tiles:insert attribute="bodyBottom" ignore="true"/>
            </div>
        </div>
    </div>
    <div class="row">
        <tiles:insert attribute="foot" ignore="true"/>
    </div>
</div>
</body>
</html>
