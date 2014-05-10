<%-- 
    Document   : SearchVehicle
    Created on : May 7, 2014, 9:54:08 PM
    Author     : Administrator
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>ค้นหาข้อมูลประเภทรถ</title>  
</head>
<body> 
<div id="dialog-form" title="Search Card Type">
    <p class="validateTips">ค้นหาข้อมูลประเภทรถ</p>
    <c:url var="url" value="/vehicletype" />
    <form:form modelAttribute="vehicle" action="${url}" method="POST">   
        <div class="row"> 
            <div class="col-xs-3" style="text-align: right;">รหัสประเภทรถ&nbsp;:</div>
            <div class="col-xs-9">
                <input class="input-append input" type="text" name="vehicletypeid" id="vehicle_type_id" maxlength="5" value="${vehicletype.vehicletypeid}"/> 
            </div>
        </div>
        <div class="row">
            <div class="col-xs-3" style="text-align: right;">รายละเอียด&nbsp;:</div>
            <div class="col-xs-9"><input class="input-append input" type="text" name="vehicletypename" id="vehicle_type_name" maxlength="30" value="${vehicletype.vehicletypename}" /></div>
        </div>
        <div class="row"><div class="span12" >&nbsp;</div></div>
        <div class="row">
            <div class="col-xs-4">&nbsp;</div>
            <div class="col-xs-4">
                <input type="button" id="search2" class="btn btn-primary btn-primary" value="ค้นหา"></button>
                <!--<button class="btn btn-primary btn-primary" type="submit" id="search-card" name="search">ค้นหา</button>&nbsp;&nbsp;-->
                <button class="btn btn-primary btn-primary" type="submit" id="close-card" name="close">ปิด</button>
            </div>
            <div class="col-xs-4">&nbsp;</div>
        </div>
        
        <!--<h1>ข้อมูลประเภทรถ</h1>-->
        <div class="row"><div class="span12" >&nbsp;</div></div>
        <table cellpadding="0" cellspacing="0" border="0" id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
              <tr>
                  <!--<th style="text-align: center">ลำดับที่</th>-->
                  <th style="width:30%; text-align: center">รหัสประเภทรถ</th>
                  <th style="width:70%; text-align: center">รายละเอียด</th>
              </tr>
              <c:choose>
                  <c:when test="${vehicleTypeList != null}">
                      <c:forEach items="${vehicleTypeList}" var="vehicleTypeList" varStatus="index">
                          <tr>
                              <!--<td>${index}</td>-->
                              <td><a href="<c:url value="/vehicletype?search=2&cardTypeId=${vehicleTypeList.vehicletypeid}" />" >${vehicleTypeList.vehicletypeid}</a></td>
                              <td>${vehicleTypeList.vehicletypename}</td>
                          </tr>
                      </c:forEach>
                  </c:when>
                  <c:otherwise>

                  </c:otherwise>
              </c:choose>
        </table> 
        <!--jQuery-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="js/jquery.reveal.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#search2').click(function(e) { // Button which will activate our modal    
                                var url = '${url}'+'?vehicletypeid='+$('#vehicle_type_id').val()+
                                                 '&vehicletypename='+$('#vehicle_type_name').val();
			   	$.post(url,function(responseTxt,statusTxt,xhr){                                    
                                    $('#dialog-form').replaceWith(responseTxt);
                                  });
			return false;
			});
		});
	</script> 
    </form:form>  
</div>    
</body>
</html>
