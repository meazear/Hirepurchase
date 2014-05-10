<%-- 
    Document   : SearchFine
    Created on : May 05, 2014, 23:41:50 PM
    Author     : FUJITSU
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>ค้นหาข้อมูลรูปแบบการคำนวณค่าปรับ</title>  
</head>
<body> 
<div id="dialog-form" title="Search Card Type">
    <p class="validateTips">ค้นหาข้อมูลรูปแบบการคำนวณค่าปรับ</p>
    <c:url var="url" value="/finetype" />
    <form:form modelAttribute="fine" action="${url}" method="POST">   
        <div class="row"> 
            <div class="col-xs-4" style="text-align: right;">รหัสรูปแบบการคำนวณค่าปรับ&nbsp;:</div>
            <div class="col-xs-8">
                <input class="input-append input" type="text" name="finetypeid" id="fine_type_id" maxlength="4" value="${fine.finetypeid}"/> 
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4" style="text-align: right;">รายละเอียด&nbsp;:</div>
            <div class="col-xs-8"><input class="input-append input" type="text" name="finetypename" id="fine_type_name" maxlength="30" value="${fine.finetypename}" /></div>
        </div>
        <div class="row">
            <div class="col-xs-3" style="text-align: right;">อัตราค่าปรับ&nbsp;:</div>
            <div class="col-xs-3"><input class="input-append input" type="text" name="finerate" id="fine_rate" maxlength="30" value="${fine.finerate}" /></div>
        </div>
        <div class="row">
            <div class="col-xs-4" style="text-align: left;">
                <form:select id="fine_rate_unit" path="finerateunit" class="chosen-select-deselect " style="width:200px;">
                    <form:option value="A">--เลือก--</form:option>
                    <form:option value="P">% ของเงินค่างวด</form:option>
                    <form:option value="B">บาท</form:option>
                </form:select>                            
            </div>
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
                  <!--<th style="text-align: center">ลำดับที่</th>-->
                  <th style="width:20%; text-align: center">รหัสรูปแบบการคำนวณค่าปรับ</th>
                  <th style="width:40%; text-align: center">รายละเอียด</th>
                  <th style="width:20%; text-align: center">อัตรา</th>
                  <th style="width:20%; text-align: center">หน่วย</th>
              </tr>
              <c:choose>
                  <c:when test="${fineList != null}">
                      <c:forEach items="${fineList}" var="fineList" varStatus="index">
                          <tr>
                              <!--<td>${index}</td>-->
                              <td><a href="<c:url value="/finetype?search=2&fineTypeId=${fineList.finetypeid}" />" >${fineList.finetypeid}</a></td>
                              <td>${fineList.finetypename}</td>
                              <td>${fineList.finerate}</td>
                              <td>${fineList.finerateunit}</td>
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
                                var url = '${url}'+'?finetypeid='+$('#fine_type_id').val()+
                                                 '&finetypename='+$('#fine_type_name').val()+
                                                 '&finerate='+$('#fine_rate').val()+
                                                 '&finerateunit='+$('#fine_rate_unit').val();
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
