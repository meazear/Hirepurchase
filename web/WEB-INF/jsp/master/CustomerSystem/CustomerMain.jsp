<%-- 
    Document   : CustomerProfile
    Created on : Apr 6, 2014, 12:20:49 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<script>
    function setActiveCustomer(flag){        
        if(flag === '1'){
            $('#tabCustomer1').attr('class','active');
            $('#DetailCustomer').attr('class','tab-pane active');
            $('#tabCustomer2').attr('class','inactive');
            $('#PhotoCustomer').attr('class','tab-pane');  
        }else{
            $('#tabCustomer1').attr('class','inactive');
            $('#DetailCustomer').attr('class','tab-pane');
            $('#tabCustomer2').attr('class','active');
            $('#PhotoCustomer').attr('class','tab-pane active');   
        }
        
    }
</script>
<form>  
    <div class="row">
        <div class="span4">บันทึกประวัติผู้เช่าซื้อ/ผู้ค้ำ</div>                            
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">                                
        <ul class="nav nav-tabs">
            <li class="active" id="tabCustomer1" onclick="setActiveCustomer('1');"><a href="#DetailCustomer">รายละเอียดประวัติผู้เช่าซื้อ/ผู้ค้ำ</a></li>
            <li id="tabCustomer2" onclick="setActiveCustomer('2');"><a href="#PhotoCustomer">ที่เก็บแฟ้มรูปแผนที่</a></li>
        </ul>
        <div class="tab-content" style="border-left: 1px solid rgb(204, 204, 204);border-right: 1px solid rgb(204, 204, 204);
             border-bottom: 1px solid rgb(204, 204, 204);">
            <div id="DetailCustomer" class="tab-pane active">
                <p>
                    <div class="container">
                        <div class="col-md-12">
                            <jsp:include page="CustomerInput.jsp" flush="false"/>
                       </div>
                    </div>   
                </p>
            </div>
            <div id="PhotoCustomer" class="tab-pane">
              <p>ที่เก็บแฟ้มรูปแผนที่</p>
            </div>
        </div>
    </div>
</form>
