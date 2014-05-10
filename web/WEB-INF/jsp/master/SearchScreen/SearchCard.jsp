<%-- 
    Document   : SearchCard
    Created on : Apr 20, 2014, 8:22:32 PM
    Author     : FUJITSU
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>ค้นหาข้อมูลประเภทบัตร</title>  
</head>
<body> 
<div id="dialog-form" title="Search Card Type">
    <p class="validateTips">ค้นหาข้อมูลประเภทบัตร</p>
    <c:url var="url" value="/cardtype" />
    <form:form modelAttribute="card" action="${url}" method="POST">   
        <div class="row"> 
            <div class="col-xs-3" style="text-align: right;">รหัสประเภทบัตร&nbsp;:</div>
            <div class="col-xs-9">
                <input class="input-append input" type="text" name="cardTypePK.cardtypeid" id="card_type_id" maxlength="4" value="${card.cardTypePK.cardtypeid}"/> 
            </div>            
        </div>
        <div class="row">
            <div class="col-xs-3" style="text-align: right;">รายละเอียด&nbsp;:</div>
            <div class="col-xs-9"><input type="text" name="cardtypename" id="card_type_name" maxlength="30" value="${card.cardtypename}" /></div>
        </div>
        <div class="row"><div class="span12" >&nbsp;</div></div>
        <div class="row">
            <div class="col-xs-4">&nbsp;</div>
            <div class="col-xs-4">
                <!--<button class="btn btn-primary btn-primary" type="submit" id="search-card" name="search">ค้นหา</button>&nbsp;&nbsp;-->
                <input type="button" id="search2" class="btn btn-primary btn-primary" value="ค้นหา"></button>
                <button class="btn btn-primary btn-primary" type="submit" id="close-card" name="close">ปิด</button>
            </div>
            <div class="col-xs-4">&nbsp;</div>
        </div>
        <div class="row"><div class="span12" >&nbsp;</div></div>
        <table cellpadding="0" cellspacing="0" border="0" id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
              <tr>
                  <!--<th style="text-align: center">ลำดับที่</th>-->
                  <th style="width:30%; text-align: center">รหัสประเภทบัตร</th>
                  <th style="width:70%; text-align: center">รายละเอียด</th>
              </tr>
              <c:choose>
                  <c:when test="${cardList != null}">
                      <c:forEach items="${cardList}" var="cardlist" varStatus="index">
                          <tr>
                              <!--<td>${index}</td>-->
                              <td><a href="<c:url value="/cardtype?search=2&cardTypeId=${cardlist.cardTypePK.cardtypeid}" />" >${cardlist.cardTypePK.cardtypeid}</a></td>
                              <td>${cardlist.cardtypename}</td>
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
                                var url = '${url}'+'?cardtypeid='+$('#card_type_id').val()+
                                                 '&cardtypename='+$('#card_type_name').val();
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
