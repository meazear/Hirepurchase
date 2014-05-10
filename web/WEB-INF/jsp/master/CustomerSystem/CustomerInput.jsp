<%-- 
    Document   : CustomerInput
    Created on : Apr 8, 2014, 8:21:57 PM
    Author     : FUJITSU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!--<div class="container">-->    
    <div class="col-lg-12">
        <div class="span4">
            <div class="row">
                <div class="col-sm-2">เลขที่บัตร&nbsp;:</div>
                <div class="col-sm-3"><input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="3-1004-00140-53-9" /></div>
                <div class="col-sm-2">&nbsp;&nbsp;&nbsp;&nbsp;<button name="search" class="search"/></div>
                <div class="col-sm-2">วันหมดอายุ&nbsp;:</div>
                <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="08-04-2014" /></div>            
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
                <div class="col-sm-2">&nbsp;</div>
                <div class="col-sm-2">ชื่อ-นามสกุล&nbsp;:</div>
                <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="ทดสอบ ระบบ" /></div>
            </div>
            <div class="row">
                <div class="col-sm-2">วันเดือนปีเกิด&nbsp;:</div>
                <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="08-04-2014" /></div>
                <div class="col-sm-2">&nbsp;</div>
                <div class="col-sm-2">อายุ&nbsp;:</div>
                <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="00" /></div>
            </div>
            <div class="row">
                <div class="col-sm-2">สถานภาพ&nbsp;:</div>
                <div class="col-sm-2">
                    <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
                        <option value="1">โสด</option>
                        <option value="2">แต่งงาน</option>
                        <option value="3">หย่าร้าง</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2">คำนำหน้าชื่อ&nbsp;:<br>(คู่สมรส)</div>
                <div class="col-sm-2">
                    <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
                        <option value="1">นาย</option>
                        <option value="2">นาง</option>
                        <option value="3">นางสาว</option>
                    </select>
                </div>
                <div class="col-sm-2">&nbsp;</div>
                <div class="col-sm-2">ชื่อ-นามสกุล&nbsp;:<br>(คู่สมรส)</div>
                <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="ทดสอบ ระบบ" /></div>
            </div>
            <div class="row">&nbsp;</div>
            <div class="row">
                <div class="col-sm-2">จำนวนบุตร&nbsp;:</div>
                <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="2" /></div>
                <div class="col-sm-2">&nbsp;</div>
                <div class="col-sm-2">อาชีพ&nbsp;:</div>
                <div class="col-sm-2"><input type="text" name="cif" id="cif" maxlength="13" value="พนักงานบริษัท" /></div>
            </div>            
        </div>
        <div class="span4">
            <div class="col-lg-10 well-large"><img src="<c:url value="/images/User-icon.png"/>" title="Customer Photo" width="70%" height="70%"></div>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="span4">
            <div class="row">
                <div class="col-sm-2">รายได้ต่อเดือน&nbsp;:</div>
                <div class="col-sm-8"><input type="text" name="cif" id="cif" maxlength="13" value="12,000.00" /></div>  
            </div>
            <div class="row">
                <div class="col-sm-2">ที่อยู่ที่ติดต่อได้&nbsp;:</div>
                <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
            </div>
            <div class="row">
                <div class="col-sm-2">เบอร์โทรศัพท์&nbsp;:</div>
                <div class="col-sm-2"><input type="tel" name="telno1" id="telno1" maxlength="13" value="02-234-1234" /></div>
                <div class="col-sm-2">&nbsp;</div>
                <div class="col-sm-2">เบอร์แฟ็ก&nbsp;:</div>
                <div class="col-sm-2"><input type="tel" name="fax1" id="fax1" maxlength="13" value="022670070" /></div>
            </div>
            <div class="row">
                <div class="col-sm-2">อีเมลล์&nbsp;:</div>
                <div class="col-sm-2"><input type="email" name="email" id="email" maxlength="13" value="" /></div>
            </div>
            <div class="row">
                <div class="col-sm-2">ที่อยู่ตามบัตร&nbsp;:</div>
                <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
            </div>
            <div class="row">
                <div class="col-sm-2">ที่อยู่ที่ทำงาน&nbsp;:</div>
                <div class="col-lg-10"><textarea class="textareaCustom" type="text" name="addr1" id="addr1" cols="12" value=""></textarea></div>
            </div>
            <div class="row">
                <div class="col-sm-3">เบอร์โทรศัพท์ที่ทำงาน&nbsp;:</div>
                <div class="col-sm-2"><input type="tel" name="telno1" id="telno1" maxlength="13" value="02-234-1234" /></div>
                <div class="col-sm-2">&nbsp;</div>
                <div class="col-sm-3">เบอร์แฟ็กที่ทำงาน&nbsp;:</div>
                <div class="col-sm-2"><input type="tel" name="fax1" id="fax1" maxlength="13" value="022670070" /></div>
            </div>
            <div class="row">
                <div class="col-sm-3">ลักษณะที่อยู่&nbsp;:</div>
                <div class="col-sm-2">
                    <select id="type" name="type" class="chosen-select-deselect " style="width:200px;">
                         <option value="1">บ้านตัวเอง</option>
                         <option value="2">คอนโด</option>
                         <option value="3">หอพัก</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">แฟ้มรูปภาพ&nbsp;:</div>
                <div class="col-sm-2">
                    <input type="file" name="photo" id="photo" maxlength="13" value="" />                    
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
    </div>    
<!--</div>-->
