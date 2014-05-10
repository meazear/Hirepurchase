<%-- 
    Document   : SearchBrand
    Created on : May 8, 2014, 7:54:16 PM
    Author     : Administrator
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>ค้นหาข้อมูลยี่ห้อรถ</title>  
</head>
<body> 
<div id="dialog-form" title="Search Card Brand">
    <p class="validateTips">ค้นหาข้อมูลยี่ห้อรถ</p>
    <c:url var="url" value="/vehiclebrand" />
    <form:form modelAttribute="vehiclebrand" action="${url}" method="POST">   
        <div class="row"> 
                <div class="col-xs-3" style="text-align: right;">รหัสยี่ห้อรถ&nbsp;:</div>
                <div class="col-xs-9">
                    <input class="input-append input" type="text" name="vehiclebrandid" id="vehicle_brand_id" maxlength="4" value="${vehiclebrand.vehiclebrandid}"/> 
                </div>
                <div id="modal" style="visibility: hidden"></div>
         </div>
        <div class="row">
            <div class="col-xs-3" style="text-align: right;">รหัสประเภทรถ&nbsp;:</div>
            <div class="col-xs-9" style="text-align: left;">                
                <form:select id="vehicle_type_id" path="vehicletypeid" class="chosen-select-deselect " style="width:200px;">
                    <form:option value="" label="">--เลือก--</form:option>
                    <c:forEach items="${vehicleTypeList}" var="vehicleType">
                            <form:option value="${vehicleType.vehicletypeid}" label="${vehicleType.vehicletypename}">${vehicleType.vehicletypename}</form:option>
                    </c:forEach>
                </form:select>                            
            </div>
        </div> 
        <div class="row">
            <div class="col-xs-3" style="text-align: right;">รายละเอียด&nbsp;:</div>
            <div class="col-xs-9"><input class="input-append input" type="text" name="vehiclebrandname" id="vehicle_brand_name" maxlength="30" value="${vehiclebrand.vehiclebrandname}" /></div>
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
        <div class="row"><div class="span12" >&nbsp;</div></div>
        <table cellpadding="0" cellspacing="0" border="0" id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
              <tr>                  
                  <th style="width:30%; text-align: center">รหัสยี่ห้อรถ</th>
                  <th style="width:40%; text-align: center">รหัสประเภทรถ</th>
                  <th style="width:30%; text-align: center">รายละเอียด</th>
              </tr>
              <c:choose>
                  <c:when test="${vehicleBrandList != null}">
                      <c:forEach items="${vehicleBrandList}" var="vehicleBrandList" varStatus="index">
                          <tr>
                              <td><a href="<c:url value="/vehiclebrand?search=2&vehiclebrandid=${vehicleBrandList.vehiclebrandid}" />" >${vehicleBrandList.vehiclebrandid}</a></td>
                              <td>${vehicleBrandList.vehicletypeid}</td>
                              <td>${vehicleBrandList.vehiclebrandname}</td>
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
                                var url = '${url}'+'?vehiclebrandid='+$('#vehicle_brand_id').val()+
                                                 '&vehicletypeid='+$('#vehicle_type_id').val()+
                                                 '&vehiclebrandname='+$('#vehicle_brand_name').val();
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
