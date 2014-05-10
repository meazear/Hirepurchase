<%-- 
    Document   : FineType
    Created on : Apr 20, 2014, 3:13:30 PM
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
                 <c:url var="url" value="/finetype" />
                <form:form modelAttribute="fine" action="${url}" method="POST"> 
                    <div class="row"><div class="span10">บันทึกรูปแบบการคำนวณค่าปรับ</div> </div>
                    <div class="row"><div class="span10">&nbsp;</div> </div>
                     <div class="row"> 
                            <div class="col-xs-3" style="text-align: right;">รหัสรูปแบบการคำนวณค่าปรับ&nbsp;:</div>
                            <div class="col-xs-9">
                                <input class="input-append input" type="text" name="finetypeid" id="finetypeid" maxlength="4" value="${fine.finetypeid}" disabled="true"/> 
                                &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="search" class="search"/>
                                <div id="modal" style="visibility: hidden"></div>
                            </div>

                     </div>
                    <div class="row">
                        <div class="col-xs-3" style="text-align: right;">ชื่อรูปแบบการคำนวณค่าปรับ&nbsp;:</div>
                        <div class="col-xs-9"><input class="input-append input" type="text" name="finetypename" id="finetypename" maxlength="30" value="${fine.finetypename}" /></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-3" style="text-align: right;">อัตราค่าปรับ&nbsp;:</div>
                        <div class="col-xs-3"><input class="input-append input" type="text" name="finerate" id="finerate" maxlength="30" value="${fine.finerate}" /></div>
                        <div class="col-xs-4" style="text-align: left;">
                            <form:select id="finerateunit" path="finerateunit" class="chosen-select-deselect " style="width:200px;">
                                <form:option value="">--เลือก--</form:option>
                                <form:option value="% ของเงินค่างวด"></form:option>
                                <form:option value="บาท"></form:option>
                            </form:select>                            
                        </div>
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
			   	$("#modal").load('<c:url value="/finetype?search=1" />');
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
