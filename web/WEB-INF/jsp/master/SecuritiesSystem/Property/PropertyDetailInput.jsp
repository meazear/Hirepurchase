<%-- 
    Document   : PropertyDetailInput
    Created on : Apr 12, 2014, 8:56:19 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-xs-12">
    <div class="row">
        <div class="col-sm-2">เลขที่หลักทรัพย์&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">รหัสประเภท&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="0001" /></div>
        <div class="col-sm-1">&nbsp;&nbsp;<button name="search" class="search"/></div>
        <div class="col-sm-2">ประเภท&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="บ้าน" /></div>
    </div>
    <div class="row">
        <div class="col-lg-10">
            รายละเอียดอสังหาริมทรัพย์&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">รหัสที่ตั้งหลักทรัพย์&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="0001" /></div>
        <div class="col-sm-1">&nbsp;&nbsp;<button name="search" class="search"/></div>
        <div class="col-sm-2">รายละเอียด&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">รหัสผู้ครอบครอง&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">คำนำหน้าชื่อ&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
                 <option value="1">นาย</option>
                 <option value="2">นาง</option>
                 <option value="3">นางสาว</option>
            </select>
        </div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">ชื่อ-นามสกุล&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="ทดสอบ ระบบ" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">ที่อยู่&nbsp;:</div>  
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">
        <div class="col-sm-2">เบอร์โทรศัพท์&nbsp;:</div>
        <div class="col-sm-2"><input type="tel" name="telno1" id="telno1" maxlength="13" value="02-234-1234" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">หมายเหตุ&nbsp;:</div>  
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">  
        <div class="col-sm-2">ชนิดการ์ด&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
             <option value="1">การ์ดเช่าซื้อ</option>
             <option value="2">การ์ดลูกหนี้</option>
            </select>  
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">เลขที่สัญญา&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>     
    </div>
    <div class="row">
        <div class="col-sm-2">ราคาทุน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div> 
    </div>
    <div class="row">
        <div class="col-sm-2">ราคาขาย&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">สถานะการตัดสต็อก&nbsp;:</div>
        <div class="col-sm-2">
            <select id="type" name="type" class="chosen-select-deselect " style="width:200px;">
                <option value="N">ยังไม่ตัด</option>
                <option value="Y">ตัดแล้ว</option>
            </select>  
        </div>       
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
