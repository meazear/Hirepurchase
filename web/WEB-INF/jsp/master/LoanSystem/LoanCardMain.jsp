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
    function setActiveLoan(flag){        
        if(flag === '1'){
            $('#tabLoan1').attr('class','active');
            $('#loanCardInput').attr('class','tab-pane active');
            $('#tabLoan2').attr('class','inactive');
            $('#loanCardDetail').attr('class','tab-pane');  
            $('#tabLoan3').attr('class','inactive');
            $('#loanCardOccupant').attr('class','tab-pane');
        }else if(flag === '2'){
            $('#tabLoan1').attr('class','inactive');
            $('#loanCardInput').attr('class','tab-pane');
            $('#tabLoan2').attr('class','active');
            $('#loanCardDetail').attr('class','tab-pane active'); 
            $('#tabLoan3').attr('class','inactive');
            $('#loanCardOccupant').attr('class','tab-pane');
        }else{
            $('#tabLoan1').attr('class','inactive');
            $('#loanCardInput').attr('class','tab-pane');
            $('#tabLoan2').attr('class','inactive');
            $('#loanCardDetail').attr('class','tab-pane');   
            $('#tabLoan3').attr('class','active');
            $('#loanCardOccupant').attr('class','tab-pane active');
        }
    }
</script>
<form>  
    <!--<div class="container">--> 
        <div class="row">
            <div class="span4">บันทึกการ์ดลูกหนี้เงินกู้</div>                            
        </div>
        <div class="row">&nbsp;</div>
        <div class="row">                                
            <ul class="nav nav-tabs">
                <li class="active" id="tabLoan1" onclick="setActiveLoan('1');"><a href="#loanCardInput">การ์ดเงินกู้</a></li>
                <li id="tabLoan2" onclick="setActiveLoan('2');"><a href="#loanCardDetail">รายละเอียดการ์ด</a></li>
                <li id="tabLoan3" onclick="setActiveLoan('3');"><a href="#loanCardOccupant">ผู้ค้ำประกัน</a></li>
            </ul>
            <div class="tab-content" style="border-left: 1px solid rgb(204, 204, 204);border-right: 1px solid rgb(204, 204, 204);
                 border-bottom: 1px solid rgb(204, 204, 204);">
                <div id="loanCardInput" class="tab-pane active">
                    <p>
                        <div class="container">
                            <div class="col-md-12">
                                <jsp:include page="LoanCardInput.jsp" flush="false"/>
                           </div>
                        </div>   
                    </p>
                </div>
                <div id="loanCardDetail" class="tab-pane">
                    <p>
                        <div class="container">
                            <div class="col-md-12">
                                <jsp:include page="LoanCardDetail.jsp" flush="false"/>
                           </div>
                        </div>
                    </p>
                </div>
                <div id="loanCardOccupant" class="tab-pane">
                  <p>ผู้ค้ำประกัน</p>
                </div>
             </div> 
        </div>        
</form>
