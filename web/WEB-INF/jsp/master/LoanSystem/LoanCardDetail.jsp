<%-- 
    Document   : CustomerCardDetail
    Created on : Apr 19, 2014, 4:38:17 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-lg-10">
    <div class="row" >&nbsp;</div>
    <div class="row" >
        <div class="span12" >
            <button class="btn btn-primary btn-primary" type="submit" name="sumbit">คำนวณงวดการชำระ</button>            
        </div>
    </div>
    <div class="row" >&nbsp;</div>
    <table class="table">
        <div class="row" style="text-align: center; background-color: #0088cc;border:1px solid black;">
            <div class="span2">No.</div>
            <div class="span2">วันครบชำระ</div>
            <div class="span2">วันที่จ่ายจริง</div>
            <div class="span2">จำนวนวัน</div>
            <div class="span2">เงินต้น</div>
            <div class="span2">ดอกเบี้ย</div>
            <div class="span2">เพิ่มเงินต้น</div>
            <div class="span2">ชำระเงินต้น</div>
            <div class="span2">ชำระดอกเบี้ย</div>
            <div class="span2">เงินต้นคงค้าง</div>
            <div class="span2">ดอกเบี้ยคงค้าง</div>
            <div class="span2">คงค้างทั้งสิ้น</div>
        </div>
        <div class="row" >
            <div class="span2">1.</div>
            <div class="span2">20/08/2552</div>
            <div class="span2">12/09/2554</div>
            <div class="span2">753</div>
            <div class="span2">2,050.00</div>
            <div class="span2">0.00</div>
            <div class="span2">48,958.33</div>
            <div class="span2">47,000.00</div>
            <div class="span2">0.00</div>
            <div class="span2">95,950.00</div>
            <div class="span2">0.00</div>
        </div>
    </table>
</div>
