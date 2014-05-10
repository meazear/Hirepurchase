<%-- 
    Document   : PropertyLocation
    Created on : Apr 12, 2014, 7:31:51 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<form>  
    <div class="row"><div class="span12" >&nbsp;</div></div>
    <div class="row">
        <div class="span4">บันทึกรหัสที่ตั้งหลักทรัพย์</div>                            
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">                            
        <div class="input-group">
            <div class="span4">&nbsp;</div>
            รหัสที่ตั้งหลักทรัพย์&nbsp;:&nbsp;
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="P0001" /> 
        </div>   
    </div>
    <div class="row">
        <div class="input-group">
            <div class="span4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
            รายละเอียด&nbsp;:&nbsp;
            <input type="text" name="cif" id="cif" maxlength="13" value="บ้าน" />
        </div> 
    </div>
    <div class="row"><div class="span12" >&nbsp;</div></div>
    <div class="row">
        <div class="col-lg-3"></div>
        <div class="span12" >
            <button class="btn btn-primary btn-primary" type="submit" name="save">บันทึก</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="submit" name="delete">ลบ</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="reset" name="reset">ล้างหน้าจอ</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="reset" name="clear">ยกเลิก</button>&nbsp;&nbsp;
        </div>
    </div>   
</form>
