<%-- 
    Document   : CustomerCardInput
    Created on : Apr 13, 2014, 6:15:47 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-lg-10">
    <div class="row">&nbsp;</div>
    <div class="row" style="text-align: center; background-color: #0088cc">
        <div class="span12" >รายละเอียดลูกหนี้เงินกู้</div>        
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">
        <div class="col-sm-2">เลขที่สัญญา&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">วันที่ทำสัญญา&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="13-04-2014" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">เลขที่บัตรประชาชน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="3-1004-00140-53-9" /></div>
        <div class="col-sm-1">&nbsp;</div>
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
            <div class="col-sm-2">ชื่อผู้ทำสัญญา&nbsp;:</div>
            <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="ทดสอบ ระบบ" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">สถานะการ์ด&nbsp;:</div>
            <div class="col-sm-2">
                <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
                    <option value="1">กำลังผ่อนชำระ</option>
                    <option value="2">กำลังผ่อนชำระ</option>
                    <option value="3">กำลังผ่อนชำระ</option>
                </select>
            </div>
    </div>
    <div class="row">
        <div class="col-sm-2">กลุ่มสินค้า&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
                <option value="1">รถ</option>
                <option value="2">อสังหาริมทรัพย์</option>
                <option value="3">หลักทรัพย์อื่นๆ</option>
            </select>
        </div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">รายละเอียดสินค้า (เลขตัวถัง)&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div>
    </div>
    <div class="row">            
        <div class="col-sm-2">ทะเบียนรถ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="ชร-7313" disabled/></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">ยี่ห้อ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="Toyota" disabled/></div>
    </div>  
    <div class="row">&nbsp;</div>
    <div class="row" style="text-align: center; background-color: #0088cc">
        <div class="col-sm-2">คำนวณค่างวด</div>        
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">            
        <div class="col-sm-2">ราคาตั้งขาย&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="50,000.00"/></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">เงินดาวน์&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="0.00"/></div>
    </div> 
    <div class="row">            
        <div class="col-sm-2">เงินต้น&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="50,000.00"/></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">อัตราดอกเบี้ย/เดือน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="2"/></div>
    </div>
    <div class="row">
        <div class="col-sm-2">หมายเหตุ&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
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
