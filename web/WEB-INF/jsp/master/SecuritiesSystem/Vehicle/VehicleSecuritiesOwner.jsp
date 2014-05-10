<%-- 
    Document   : CarSecuritiesOwner
    Created on : Apr 24, 2014, 12:29:11 AM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-xs-12">
    <div class="row">
        <div class="col-sm-2">รหัสผู้ครอบครอง&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">คำนำหน้าชื่อเจ้าของรถ&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
                <option value="1">นาย</option>
                <option value="2">นาง</option>
                <option value="3">นางสาว</option>
            </select>
        </div>
        <div class="col-sm-2">&nbsp;</div>
        <div class="col-sm-2">ชื่อ-นามสกุลเจ้าของรถ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="ทดสอบ ระบบ" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">ที่อยู่&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">
        <div class="col-sm-2">เบอร์โทรศัพท์&nbsp;:</div>
        <div class="col-md-10">
            <input type="tel" name="telno1" id="telno1" maxlength="13" value="02-234-1234" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">เลขที่บัตรประชาชน&nbsp;:</div>
        <div class="col-sm-3"><input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="3-1004-00140-53-9" /></div>       
    </div>
    <div class="row">
        <div class="col-sm-2">วันหมดอายุ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="08-04-2014" /></div>                 
    </div>  
    <div class="row">
        <div class="col-sm-2">คำนำหน้าชื่อผู้ฝาก&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
                <option value="1">นาย</option>
                <option value="2">นาง</option>
                <option value="3">นางสาว</option>
            </select>
        </div>
        <div class="col-sm-2">&nbsp;</div>
        <div class="col-sm-2">ชื่อ-นามสกุลผู้ฝาก&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="ทดสอบ ระบบ" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">ที่อยู่ผู้ฝาก&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">
        <div class="col-sm-2">เบอร์โทรศัพท์ผู้ฝาก&nbsp;:</div>
        <div class="col-md-10">
            <input type="tel" name="telno1" id="telno1" maxlength="13" value="02-234-1234" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">เลขที่บัตรประชาชน&nbsp;:</div>
        <div class="col-sm-3"><input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="3-1004-00140-53-9" /></div>       
    </div>
    <div class="row">
        <div class="col-sm-2">วันหมดอายุ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="08-04-2014" /></div>                 
    </div>
    <div class="row"><div class="span12">&nbsp;</div></div>        
    <div class="row">
        <div class="col-lg-3"></div>
        <div class="span12" >
            <button class="btn btn-primary btn-primary" type="submit" name="sumbit">บันทึก</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="submit" name="delete">ลบ</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="reset" name="reset">ล้างหน้าจอ</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="reset" name="clear">ยกเลิก</button>&nbsp;&nbsp;
        </div>
    </div>
</div>
