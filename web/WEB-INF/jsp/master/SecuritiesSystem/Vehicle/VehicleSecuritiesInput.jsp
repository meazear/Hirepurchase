<%-- 
    Document   : CarSecurities
    Created on : Apr 12, 2014, 2:53:03 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-xs-12">
    <div class="row">
        <div class="col-sm-2">เลขเครื่องยนต์&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">รหัสประเภทรถ&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">รายละเอียดประเภทรถ&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
    </div>
    <div class="row">
        <div class="col-sm-2">รหัสยี่ห้อรถ&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">รายละเอียดยี่ห้อรถ&nbsp;:</div>
        <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>        
    </div>
    <div class="row">
        <div class="col-sm-2">รุ่น&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="0001" /></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">สี&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div>                
    </div>  
    <div class="row">
        <div class="col-sm-2">รุ่นปี&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="0001" /></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">เลขตัวรถ&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div> 
    </div>
    <div class="row">
        <div class="col-sm-2">วันที่จดทะเบียน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="0001" /></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">เลขทะเบียน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div>                
    </div>
    <div class="row">
        <div class="col-sm-2">จังหวัด&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="0001" /></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">สถานะ&nbsp;:</div>
        <div class="col-sm-2">
            <select id="type" name="type" class="chosen-select-deselect " style="width:190px;">
                <option value="1">ของใหม่</option>
                <option value="2">ของใช้แล้ว</option>
            </select>
        </div>  
    </div>
    <div class="row">
        <div class="col-sm-2">วันที่ครบต่อภาษี&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="14" /></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">เดือนที่ครบต่อภาษี&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="เมษายน" /></div>                 
    </div>
    <div class="row">
        <div class="col-sm-2">วันที่ครบต่อประกัน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="14" /></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">เดือนที่ครบต่อประกัน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="เมษายน" /></div>                
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
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">เลขที่สัญญา&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="" /></div>                 
    </div>
    <div class="row">
        <div class="col-sm-2">ราคาทุน&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="120,000.00" /></div>
        <div class="col-sm-1">&nbsp;</div>
        <div class="col-sm-2">ราคาขาย&nbsp;:</div>
        <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="180,000.00" /></div>              
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
    <div class="row">
        <div class="col-sm-2">รหัสสถานที่เก็บ&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="00001" />
            <button name="search" class="search"/>
        </div>
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
            <button class="btn btn-primary btn-primary" type="submit" name="delete">ลบ</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="reset" name="reset">ล้างหน้าจอ</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-primary" type="reset" name="clear">ยกเลิก</button>&nbsp;&nbsp;
        </div>
    </div>
</div>
