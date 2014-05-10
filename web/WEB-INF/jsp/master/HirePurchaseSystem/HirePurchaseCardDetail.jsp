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
    <table cellpadding="0" cellspacing="0" border="0" id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
        <tr>
            <th>No.</th>
            <th>วันครบกำหนด</th>
            <th>วันที่ชำระ</th>
            <th>วันล่าช้า</th>
            <th>ค่างวด</th>
            <th>อ้างถึง</th>
            <!--<div class="span1">ใบกำกับภาษี</div>-->
            <th>เงินต้นคงค้าง</th>
            <th>ดอกเบี้ยคงค้าง</th>
            <th>ภาษีคงค้าง</th>
            <th>คงค้างทั้งสิ้น</th>
            <th>สถานะ</th>
        </tr>
        <tr>
            <td>1.</td>
            <td>20/08/2552</td>
            <td>12/09/2554</td>
            <td>753</td>
            <td>2,050.00</td>
            <td>RF0029</td>
            <!--<div class="span1">ใบกำกับภาษี</div>-->
            <td>48,958.33</td>
            <td>47,000.00</td>
            <td>0.00</td>
            <td>95,950.00</td>
            <td>Y</td>
        </tr>
        <tr>
            <td>2.</td>
            <td>20/08/2552</td>
            <td>12/09/2554</td>
            <td>753</td>
            <td>2,050.00</td>
            <td>RF0029</td>
            <!--<div class="span1">ใบกำกับภาษี</div>-->
            <td>48,958.33</td>
            <td>47,000.00</td>
            <td>0.00</td>
            <td>95,950.00</td>
            <td>Y</td>
        </tr>
    </table>
</div>
