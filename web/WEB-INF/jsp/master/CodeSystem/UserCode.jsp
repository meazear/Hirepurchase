<%-- 
    Document   : userCode
    Created on : Apr 11, 2014, 8:36:16 PM
    Author     : FUJITSU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<c:url var="url" value="/usercode" />
<form:form modelAttribute="user" action="${url}" method="POST"> 
    <div class="row"><div class="span12" >&nbsp;</div></div>
    <div class="row">
        <div class="span4">บันทึกรหัสผู้ใช้งานโปรแกรม</div>                            
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">
        <div class="col-lg-12">
            <div class="span10">
                <div class="row">
                    <div class="col-lg-12">                    
                        <div class="col-lg-4" style="text-align:left">รหัสผู้ใช้งาน&nbsp;:</div>
                        <div class="col-lg-4"><input class="input-append input" type="text" name="username" id="username" maxlength="13" value="${user.username}" />   </div>
                        <div class="col-lg-4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button name="search" class="search"/></div>
                    </div> 
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-4" style="text-align:left">รหัสผ่าน&nbsp;:</div>
                        <div class="col-lg-4"><input type="password" name="password" id="password" maxlength="13" value="${user.password}" /></div> 
                    </div>    
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-4" style="text-align:left">คำนำหน้าชื่อ&nbsp;:</div>
                        <div class="col-lg-8">
                            <select id="title" name="title" class="chosen-select-deselect " style="width:200px;">
                                <option value="1">นาย</option>
                                <option value="2">นาง</option>
                                <option value="3">นางสาว</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-4" style="text-align:left">ชื่อ&nbsp;:</div>
                        <div class="col-lg-4"><input type="text" name="fname" id="fname" maxlength="20" value="${user.fname}" /></div>
                    </div>                                
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-4" style="text-align:left">นามสกุล&nbsp;:</div>
                        <div class="col-lg-4"><input type="text" name="fname" id="fname" maxlength="20" value="${user.fname}" /></div>
                    </div>     
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-4" style="text-align:left">แผนก&nbsp;:</div>
                        <div class="col-lg-4"><input type="text" name="department" id="department" maxlength="50" value="${user.department}" /></div> 
                    </div>                               
                </div> 
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-4" style="text-align:left">ตำแหน่ง&nbsp;:</div>
                        <div class="col-lg-4"><input type="text" name="position" id="position" maxlength="50" value="${user.position}" /></div>
                    </div>                                
                </div>    
            </div>
            <div class="span2" style="text-align:right">                
                <img src="<c:url value="/images/User-icon.png"/>" title="Customer Photo" width="70%" height="70%">
            </div>
        </div>
   </div>
   <div class="row">
       <div class="col-lg-12">
            <div class="row">                
                <div class="col-xs-1" ></div>
                <div class="col-xs-2" style="text-align:left">ที่อยู่ที่ติดต่อได้&nbsp;:</div>
                <div class="col-lg-8" >
                    <textarea class="textareaCustom" type="text" name="contactaddr" id="contactaddr" cols="12" value="${user.contactaddr}"></textarea>
                </div>                
            </div>
            <div class="row">
                <div class="col-xs-1" ></div>
                <div class="col-xs-2" style="text-align:left">อีเมลล์&nbsp;:</div>
                <div class="col-lg-8"><input type="email" name="email" id="email" maxlength="50" value="${user.email}" /></div>
            </div> 
            
            <div class="row">
                <div class="col-xs-1" ></div>
                <div class="col-xs-2" style="text-align:left">สิทธิ์การใช้โปรแกรม&nbsp;:</div>
                <div class="col-lg-8">
                    <select id="privilege" name="privilege" class="chosen-select-deselect " style="width:100px;">
                        <option value="1">Y</option>
                        <option value="2">N</option>
                   </select>
                </div>        
            </div>  
            <div class="row">
                <div class="col-xs-1" ></div>
                <div class="col-xs-2" style="text-align:left">แฟ้มรูปภาพ&nbsp;:</div>
                <div class="col-lg-8">
                    <input type="file" name="userattachedphoto" id="userattachedphoto" maxlength="13" />                    
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
            <div class="row"><div class="span12" >&nbsp;</div></div>
        </div>
   </div>
</form:form>
