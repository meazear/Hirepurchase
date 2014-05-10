<%-- 
    Document   : CarBrand
    Created on : Apr 12, 2014, 12:55:31 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">
<head>
<META http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>${titleName}</title>
<link rel="stylesheet" href="<c:url value="/css/main.css"/>">
<link rel="stylesheet" href="<c:url value="/css/bootstrap-theme.min.css"/>">
<link rel="stylesheet" href="<c:url value="css/bjqs.css"/>">
<link rel="stylesheet" href="<c:url value="/css/modal.css"/>">
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bjqs-1.3.min.js"/>"></script>
</head>
<body>
        <div class="container">
            <%@include file="/WEB-INF/jsp/master/user/mainHeader.jsp" %>
        </div>         
        <br><br>
        <div class="container">
            <%@include file="/WEB-INF/jsp/master/user/mainSideMenu.jsp" %>
        </div>
        <div class="container" style='position:static;height:90%'>            
            <div class="col-lg-10" style="border-radius: 10px;float:right;padding-right:10px;z-index: 1;">
                 <c:url var="url" value="/vehiclebrand" />
                <form:form modelAttribute="vehiclebrand" action="${url}" method="POST"> 
                    <div class="row"><div class="span10">${titleName}</div> </div>
                    <div class="row"><div class="span10">&nbsp;</div> </div>
                    <div class="row"> 
                            <div class="col-xs-3" style="text-align: right;">รหัสยี่ห้อรถ&nbsp;:</div>
                            <div class="col-xs-9">
                                <input class="input-append input" type="text" name="vehiclebrandid" id="vehiclebrandid" maxlength="4" value="${vehiclebrand.vehiclebrandid}" disabled="true"/> 
                                &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="search" class="search"/>
                                <div id="modal" style="visibility: hidden"></div>
                            </div>

                     </div>
                    <div class="row">
                        <div class="col-xs-3" style="text-align: right;">รหัสประเภทรถ&nbsp;:</div>
                        <div class="col-xs-9" style="text-align: left;">
                            <form:select id="vehicletypeid" path="vehicletypeid" class="chosen-select-deselect " style="width:200px;">
                                <form:option value="" label="">--กรุณาระบุ--</form:option>
                                <c:forEach items="${vehicleTypeList}" var="vehicleType">                                    
                                        <form:option value="${vehicleType.vehicletypeid}" label="${vehicleType.vehicletypename}">${vehicleType.vehicletypename}</form:option>
                                </c:forEach>
                            </form:select>                            
                        </div>
                    </div> 
                    <div class="row">
                        <div class="col-xs-3" style="text-align: right;">รายละเอียด&nbsp;:</div>
                        <div class="col-xs-9"><input class="input-append input" type="text" name="vehiclebrandname" id="vehiclebrandname" maxlength="30" value="${vehiclebrand.vehiclebrandname}" /></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">${errorMsg}</div>
                    </div>
                    <div class="row"><div class="span12" >&nbsp;</div></div>
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <div class="span12" >
                            <button class="btn btn-primary btn-primary" type="submit" name="save">บันทึก</button>&nbsp;&nbsp;
                            <button class="btn btn-primary btn-primary" type="submit" name="delete">ลบ</button>&nbsp;&nbsp;
                            <button class="btn btn-primary btn-primary" type="reset" name="clear">ล้างหน้าจอ</button>&nbsp;&nbsp;
                            <button class="btn btn-primary btn-primary" type="reset" name="goToMain">ออก</button>&nbsp;&nbsp;
                        </div>
                    </div>   
                </form:form>
            </div>
        </div>  
        <!--jQuery-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="js/jquery.reveal.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#search').click(function(e) { // Button which will activate our modal
			   	$("#modal").load('<c:url value="/vehiclebrand?search=1" />');
                                $('#modal').reveal({ // The item which will be opened with reveal
				  	animation: 'fade',                   // fade, fadeAndPop, none
					animationspeed: 600,                       // how fast animtions are
					closeonbackgroundclick: false,              // if you click background will modal close?
					dismissmodalclass: 'close'    // the class of a button or element that will close an open modal
				});
                                $('#main-header').attr("style","background-color: silver;float: right;padding-top: 70px;padding-left: 263px;z-index: 0;");
			return false;
			});
		});
	</script>           
</body>
</html> 
