<%-- 
    Document   : CarSecurities
    Created on : Apr 12, 2014, 2:44:54 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<script>
    function setActiveCar(flag){        
        if(flag === '1'){
            $('#tabCar1').attr('class','active');
            $('#Securities').attr('class','tab-pane active');
            $('#tabCar2').attr('class','inactive');
            $('#MapPhoto').attr('class','tab-pane');  
            $('#tabCar3').attr('class','inactive');
            $('#Occupant').attr('class','tab-pane');
        }else if(flag === '2'){
            $('#tabCar1').attr('class','inactive');
            $('#Securities').attr('class','tab-pane');
            $('#tabCar2').attr('class','active');
            $('#MapPhoto').attr('class','tab-pane active'); 
            $('#tabCar3').attr('class','inactive');
            $('#Occupant').attr('class','tab-pane');
        }else{
            $('#tabCar1').attr('class','inactive');
            $('#Securities').attr('class','tab-pane');
            $('#tabCar2').attr('class','inactive');
            $('#MapPhoto').attr('class','tab-pane');   
            $('#tabCar3').attr('class','active');
            $('#Occupant').attr('class','tab-pane active');
        }
    }
</script>
<form>  
    <div class="row">
        <div class="span4">บันทึกหลักทรัพย์ประเภทรถ</div>                            
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">                                
        <ul class="nav nav-tabs">
            <li class="active" id="tabCar1" onclick="setActiveCar('1');"><a href="#Securities">รายละเอียดหลักทรัพย์ประเภทรถ</a></li>
            <li id="tabCar2" onclick="setActiveCar('2');"><a href="#MapPhoto">ที่เก็บแฟ้มรูปแผนที่</a></li>
            <li id="tabCar3" onclick="setActiveCar('3');"><a href="#Occupant">ผู้ครอบครอง</a></li>
        </ul>
        <div class="tab-content" style="border-left: 1px solid rgb(204, 204, 204);border-right: 1px solid rgb(204, 204, 204);
             border-bottom: 1px solid rgb(204, 204, 204);">
            <div id="Securities" class="tab-pane active">
                <p>
                    <div class="container">
                        <div class="col-md-12">
                            <jsp:include page="CarSecuritiesInput.jsp" flush="false"/>
                       </div>
                    </div>   
                </p>
            </div>
            <div id="MapPhoto" class="tab-pane">
              <p>ที่เก็บแฟ้มรูปแผนที่</p>
            </div>
            <div id="Occupant" class="tab-pane">
                <p>
                    <div class="container">
                        <div class="col-md-12">
                            <jsp:include page="CarSecuritiesOwner.jsp" flush="false"/>
                       </div>
                    </div>
                </p>
            </div>
         </div> 
    </div>
</form>
