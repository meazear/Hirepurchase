<%-- 
    Document   : Welcome
    Created on : Apr 5, 2014, 7:36:07 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${titleName}</title>
<link rel="stylesheet" href="<c:url value="/css/main.css"/>">
<link rel="stylesheet" href="<c:url value="/css/bootstrap-theme.min.css"/>">
<link rel="stylesheet" href="<c:url value="css/bjqs.css"/>">
<!--<link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">-->
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bjqs-1.3.min.js"/>"></script>
</head>
<!--<body style="background-color: rgb(211, 225, 243);">-->
<body>
        <div class="container">
            <jsp:include page="user/mainHeader.jsp" flush="true"/>
        </div>         
        <br><br>
        <div class="container">
                <jsp:include page="user/mainSideMenu.jsp" flush="true"/>
            </div>
        <div class="container" style='position:static;height:90%'>            
            <div class="col-lg-10" style="border-radius: 10px;float:right;padding-right:10px;z-index: 0;">
                <jsp:include page="${pageUrl}" flush="false"/>
            </div>
        </div>    
</body>
</html>                                		
