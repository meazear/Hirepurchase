<%-- 
    Document   : PropertyDetail
    Created on : Apr 12, 2014, 8:55:42 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<script>
    function setActiveProp(flag){        
        if(flag === '1'){
            $('#tabProp1').attr('class','active');
            $('#SecuritiesProp').attr('class','tab-pane active');
            $('#tabProp2').attr('class','inactive');
            $('#PhotoProp').attr('class','tab-pane'); 
        }else{
            $('#tabProp1').attr('class','inactive');
            $('#SecuritiesProp').attr('class','tab-pane');
            $('#tabProp2').attr('class','active');
            $('#PhotoProp').attr('class','tab-pane active');             
        }
    }
</script>
<form>  
    <div class="row">
        <div class="span4">บันทึกหลักทรัพย์ประเภทอสังหาริมทรัพย์</div>                            
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">                                         
        <ul class="nav nav-tabs">
            <li class="active" id="tabProp1" onclick="setActiveProp('1');"><a href="#SecuritiesProp">รายละเอียดหลักทรัพย์ประเภทอสังหาริมทรัพย์</a></li>
            <li id="tabProp2" onclick="setActiveProp('2');"><a href="#PhotoProp">ที่เก็บแฟ้มรูปภาพ</a></li>
        </ul>
        <div class="tab-content" style="border-left: 1px solid rgb(204, 204, 204);border-right: 1px solid rgb(204, 204, 204);
             border-bottom: 1px solid rgb(204, 204, 204);">
            <div id="SecuritiesProp" class="tab-pane active">
                <p>
                    <div class="container">
                        <div class="col-md-12">
                            <jsp:include page="PropertyDetailInput.jsp" flush="false"/>
                       </div>
                    </div>   
                </p>
            </div>
            <div id="PhotoProp" class="tab-pane">
              <p>ที่เก็บแฟ้ม</p>
            </div>
         </div> 
    </div>
</form>
