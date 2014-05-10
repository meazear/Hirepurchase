<%-- 
    Document   : CardCardMain
    Created on : Apr 13, 2014, 6:15:28 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<script>
    function setActiveCard(flag){        
        if(flag === '1'){
            $('#tabHirepurchase1').attr('class','active');
            $('#hirepurchaseCardInput').attr('class','tab-pane active');
            $('#tabHirepurchase2').attr('class','inactive');
            $('#hirepurchaseCardDetail').attr('class','tab-pane');  
            $('#tabHirepurchase3').attr('class','inactive');
            $('#hirepurchaseCardOccupant').attr('class','tab-pane');
        }else if(flag === '2'){
            $('#tabHirepurchase1').attr('class','inactive');
            $('#hirepurchaseCardInput').attr('class','tab-pane');
            $('#tabHirepurchase2').attr('class','active');
            $('#hirepurchaseCardDetail').attr('class','tab-pane active'); 
            $('#tabHirepurchase3').attr('class','inactive');
            $('#hirepurchaseCardOccupant').attr('class','tab-pane');
        }else{
            $('#tabHirepurchase1').attr('class','inactive');
            $('#hirepurchaseCardInput').attr('class','tab-pane');
            $('#tabHirepurchase2').attr('class','inactive');
            $('#hirepurchaseCardDetail').attr('class','tab-pane');   
            $('#tabHirepurchase3').attr('class','active');
            $('#hirepurchaseCardOccupant').attr('class','tab-pane active');
        }
    }
</script>
<form>  
    <!--<div class="container">--> 
        <div class="row">
            <div class="span4">บันทึกการ์ดลูกหนี้เช่าซื้อ</div>                            
        </div>
        <div class="row">&nbsp;</div>
        <div class="row">                                
            <ul class="nav nav-tabs">
                <li class="active" id="tabHirepurchase1" onclick="setActiveCard('1');"><a href="#hirepurchaseCardInput">การ์ดลูกหนี้</a></li>
                <li id="tabHirepurchase2" onclick="setActiveCard('2');"><a href="#hirepurchaseCardDetail">รายละเอียดการ์ด</a></li>
                <li id="tabHirepurchase3" onclick="setActiveCard('3');"><a href="#hirepurchaseCardOccupant">ผู้ค้ำประกัน</a></li>
            </ul>
            <div class="tab-content" style="border-left: 1px solid rgb(204, 204, 204);border-right: 1px solid rgb(204, 204, 204);
                 border-bottom: 1px solid rgb(204, 204, 204);">
                <div id="hirepurchaseCardInput" class="tab-pane active">
                    <p>
                        <div class="container">
                            <div class="col-md-12">
                                <jsp:include page="HirePurchaseCardInput.jsp" flush="false"/>
                           </div>
                        </div>   
                    </p>
                </div>
                <div id="hirepurchaseCardDetail" class="tab-pane">
                    <p>
                        <div class="container">
                            <div class="col-md-12">
                                <jsp:include page="HirePurchaseCardDetail.jsp" flush="false"/>
                           </div>
                        </div>
                    </p>
                </div>
                <div id="hirepurchaseCardOccupant" class="tab-pane">
                  <p>ผู้ค้ำประกัน</p>
                </div>
             </div> 
        </div>        
</form>
