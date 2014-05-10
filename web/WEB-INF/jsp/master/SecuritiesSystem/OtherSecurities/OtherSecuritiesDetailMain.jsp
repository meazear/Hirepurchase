<%-- 
    Document   : OtherSecuritiesDetailMain
    Created on : Apr 12, 2014, 10:50:08 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<script>
    function setActiveSec(flag){        
        if(flag === '1'){
            $('#tabSec1').attr('class','active');
            $('#SecuritiesSec').attr('class','tab-pane active');
            $('#tabSec2').attr('class','inactive');
            $('#PhotoSec').attr('class','tab-pane'); 
        }else{
            $('#tabSec1').attr('class','inactive');
            $('#SecuritiesSec').attr('class','tab-pane');
            $('#tabSec2').attr('class','active');
            $('#PhotoSec').attr('class','tab-pane active');             
        }
    }
</script>
<form>  
    <div class="row">
        <div class="span4">บันทึกหลักทรัพย์ประเภทอื่นๆ</div>                            
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">                                
        <ul class="nav nav-tabs">
            <li class="active" id="tabSec1" onclick="setActiveSec('1');"><a href="#SecuritiesSec">รายละเอียดหลักทรัพย์ประเภทอื่นๆ</a></li>
            <li id="tabSec2" onclick="setActiveSec('2');"><a href="#PhotoSec">ที่เก็บแฟ้มรูปภาพ</a></li>
        </ul>
        <div class="tab-content" style="border-left: 1px solid rgb(204, 204, 204);border-right: 1px solid rgb(204, 204, 204);
             border-bottom: 1px solid rgb(204, 204, 204);">
            <div id="SecuritiesSec" class="tab-pane active">
                <p>
                    <div class="container">
                        <div class="col-md-12">
                            <jsp:include page="OtherSecuritiesDetailInput.jsp" flush="false"/>
                       </div>
                    </div>   
                </p>
            </div>
            <div id="PhotoSec" class="tab-pane">
              <p>ที่เก็บแฟ้ม</p>
            </div>
         </div> 
    </div>        
</form>        
