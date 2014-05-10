<%-- 
    Document   : SearchDebtFollowupType
    Created on : May 6, 2014, 12:38:35 AM
    Author     : Administrator
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>ค้นหาข้อมูลอัตราค่าบริการติดตามหนี้</title>  
</head>
<body> 
<div id="dialog-form" title="Search Card Type">
    <p class="validateTips">ค้นหาข้อมูลอัตราค่าบริการติดตามหนี้</p>
    <c:url var="url" value="/debtfollowuprate" />
    <form:form modelAttribute="debtfollow" action="${url}" method="POST">   
        <div class="row"> 
            <div class="col-xs-4" style="text-align: right;">รหัสอัตราค่าบริการติดตามหนี้&nbsp;:</div>
            <div class="col-xs-8">
                <input class="input-append input" type="text" name="debtfollowuptypeid" id="debt_followup_type_id" maxlength="4" value="${debtfollow.debtfollowuptypeid}"/> 
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4" style="text-align: right;">รายละเอียด&nbsp;:</div>
            <div class="col-xs-8"><input type="text" name="debtfollowuptypename" id="debt_followup_type_name" maxlength="30" value="${debtfollow.debtfollowuptypename}" /></div>
        </div>
        <div class="row">
            <div class="col-xs-4" style="text-align: right;">อัตราค่าบริการ/หน่วย&nbsp;:</div>
            <div class="col-xs-8">
                <input class="input-append input" type="text" name="debtfollowuprate" id="debt_followup_rate" maxlength="13" value="${debtfollow.debtfollowuprate}" />   
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
                  <th style="width:30%; text-align: center">รหัสอัตราค่าบริการติดตามหนี้</th>
                  <th style="width:40%; text-align: center">รายละเอียด</th>
                  <th style="width:30%; text-align: center">อัตราค่าบริการ/หน่วย</th>
              </tr>
              <c:choose>
                  <c:when test="${debtFollowupTypeList != null}">
                      <c:forEach items="${debtFollowupTypeList}" var="debtFollowupTypeList" varStatus="index">
                          <tr>
                              <!--<td>${index}</td>-->
                              <td><a href="<c:url value="/debtfollowuprate?search=2&debtFollowupTypeId=${debtFollowupTypeList.debtfollowuptypeid}" />" >${debtFollowupTypeList.debtfollowuptypeid}</a></td>
                              <td>${debtFollowupTypeList.debtfollowuptypename}</td>
                              <td>${debtFollowupTypeList.debtfollowuprate}</td>
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
                                var url = '${url}'+'?debtfollowuptypeid='+$('#debt_followup_type_id').val()+
                                                 '&debtfollowuptypename='+$('#debt_followup_type_name').val()+
                                                 '&debtfollowuprate='+$('#debt_followup_rate').val();
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
