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
<title>Leasing System</title>
<link rel="stylesheet" href="<c:url value="/css/main.css"/>">
<link rel="stylesheet" href="<c:url value="/css/bootstrap-theme.min.css"/>">
<link rel="stylesheet" href="<c:url value="css/bjqs.css"/>">
<!--<link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">-->
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bjqs-1.3.min.js"/>"></script>
</head>
<body>     
        <div class="container">
            <jsp:include page="mainHeader.jsp" flush="true"/>
        </div>       
        <br><br><br><br>
        <div class="container">
            <jsp:include page="mainSideMenu.jsp" flush="true"/>
        </div>
        <div class="container" style="position:static;height:90%;z-index: 0;padding-left: 266px;">
            <div class="row">
                <div class="col-xs-9">
                    <!--style="background-image: url(images/Hirepurchase_background.jpg);background-repeat: no-repeat;"-->
                    <img src="images/Hirepurchase_background.jpg"width="100%" height="100%"/>
<!--                    <div id="banner-fade">
                          <ul class="bjqs">
                              <li><img src="images/headlogo.jpg" title="Welcome To Leasing System" width="100%" height="100%"></li>
                            <li><img src="images/hirepurchase.jpg" title="Hire Purchase" width="100%" height="100%"></li>
                            <li><img src="images/housingloan.jpg" title="Housing Loan" width="100%" height="100%"></li>
                          </ul>  
                        <script>
                      jQuery(document).ready(function($) { $('#banner-fade').bjqs({ height :400, width:1000,responsive: true }); });
                   </script>
                    </div>-->
                    <div class="row">
                        <div class="col-xs-12">
                            <footer>
                                <p>&copy; Copyright 2014 Hirepurchase System</p>
                            </footer>
                        </div>
                    </div>
                </div>
          </div> 
        </div>
</body>
</html>                                		
