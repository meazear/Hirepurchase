<%-- 
    Document   : UserPrivilege
    Created on : Apr 20, 2014, 3:27:36 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<form>
    <div class="row"><div class="span10">บันทึกสิทธิ์เข้าใช้โปรแกรม</div> </div>
    <div class="row"><div class="span10">&nbsp;</div> </div>
    <div class="row">
        <div class="col-sm-2">รหัสผู้ใช้งาน&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="C0001" />   
            <button name="search" class="search"/>
        </div>                    
    </div>
    <div class="row">
        <div class="col-sm-2">ชื่อฟอร์ม&nbsp;:</div>
        <div class="col-md-10">
            <input class="input-append input" type="text" name="cif" id="cif" maxlength="13" value="" />   
            <button name="search" class="search"/>
        </div>                    
    </div>
    <div class="row">
        <div class="col-sm-2">สิทธิ์การใช้งาน&nbsp;:</div>
        <div class="col-md-10">
            <input type="checkbox" name="cif" id="cif" maxlength="13" value="" />เปิด  
            <input type="checkbox" name="cif" id="cif" maxlength="13" value="" />เพิ่ม
            <input type="checkbox" name="cif" id="cif" maxlength="13" value="" />แก้ไข
            <input type="checkbox" name="cif" id="cif" maxlength="13" value="" />ลบ
            <input type="checkbox" name="cif" id="cif" maxlength="13" value="" />พิมพ์            
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
    <div class="row"><div class="span12">&nbsp;</div></div>
    <table cellpadding="0" cellspacing="0" border="0" id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
        <tr>
            <th>No.</th>
            <th>ชื่อฟอร์ม</th>
            <th>รายละเอียด</th>
            <th>เปิด</th>
            <th>เพิ่ม</th>
            <th>แก้ไข</th>
            <th>ลบ</th>
            <th>พิมพ์</th>
        </tr>
        <tr>
            <td>1.</td>
            <td>F01.01</td>
            <td>บันทึกรหัสผู้ใช้งานโปรแกรม</td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
        </tr>
        <tr>
            <td>2.</td>
            <td>F01.02</td>
            <td>บันทึกสิทธิ์เข้าใช้โปรแกรม</td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
            <td><input type="checkbox" name="cif" id="cif" maxlength="13" value="" disabled checked/></td>
        </tr>
    </table>
</form>
