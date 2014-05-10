<%-- 
    Document   : OtherSecuritiesDetailInput
    Created on : Apr 12, 2014, 10:51:58 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-xs-12">
    <div class="row">
        <div class="col-sm-2">รหัสหลักทรัพย์&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">รหัสประเภท&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">ประเภท&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">
        <div class="col-sm-2">รหัสยี่ห้อ&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">ยี่ห้อ&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">
        <div class="col-sm-2">รายละเอียด&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">
        <div class="col-sm-2">สถานะ&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:190px;">
                 <option value="1">ของใหม่</option>
                 <option value="2">ของใช้แล้ว</option>
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">หมายเหตุ&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">  
        <div class="col-sm-2">ชนิดการ์ด&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:190px;">
             <option value="1">การ์ดเช่าซื้อ</option>
             <option value="2">การ์ดลูกหนี้</option>
            </select>  
        </div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">เลขที่สัญญา&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="C00001" /></div>
        <div class="col-sm-1">&nbsp;&nbsp;<button name="search" class="search"/></div>
    </div>
    <div class="row">
        <div class="col-sm-2">ราคาทุน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="120,000.00" /></div> 
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">ราคาขาย&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="180,000.00" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">หน่วยนับ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="ชิ้น" /></div> 
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">จำนวนคงเหลือ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="10" /></div>         
    </div>
    <div class="row">
        <div class="col-sm-2">การตัดสต็อก&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:190px;">
                 <option value="1">ตัดเป็นชิ้น</option>
            </select>
        </div>  
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">สถานะการตัดสต็อก&nbsp;:</div>
        <div class="col-sm-2">
            <select id="title" name="title" class="chosen-select-deselect " style="width:190px;">
                 <option value="N">ยังไม่ตัด</option>
                <option value="Y">ตัดแล้ว</option>
            </select>
        </div> 
    </div>
    <div class="row">
        <div class="col-sm-2">Serial No.&nbsp;:</div>
        <div class="col-sm-2"><input type="tel" name="telno1" id="telno1" maxlength="13" value="012341234" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">รหัสสถานที่เก็บ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="120,000.00" /></div>
    </div>
    <div class="row">
        <div class="col-sm-2">สถานที่เก็บ&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row"><div class="span12">&nbsp;</div></div>        
    <div class="row">
        <div class="col-lg-3"></div>
        <div class="span12" >
            <button class="btn btn-primary btn-primary" type="submit" name="sumbit">บันทึก</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="reset" name="reset">ล้างหน้าจอ</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="reset" name="clear">ยกเลิก</button>&nbsp;&nbsp;
        </div>
    </div>
</div>
