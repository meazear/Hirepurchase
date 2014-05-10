<%-- 
    Document   : mainHeader
    Created on : Apr 6, 2014, 2:16:30 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="<c:url value="/js/date_time.js"/>"></script>
<nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">    
    <div class="navbar-header" style="float: right;">            
        <div class="row">
            <div class="navbar-brand" style="float: right">ผู้ใช้งานระบบ Leasing System : นายทดสอบ ระบบ</div>
        </div>
        <div class="row">
            <div class="navbar-brand" style="float: right">วัน-เวลา เข้าใช้ระบบ : <span id="date_time" style="color:#ffffff ; font-size:12px; padding-top:10px; "></span><script type="text/javascript">window.onload = date_time('date_time');</script></div>
        </div>
    </div>              
</nav>
<div id="main-header" class="navbar-header navbar-fixed-top" style="background-color: silver;float: right;padding-top: 70px;padding-left: 263px;z-index: 2;">
    <div class="col-lg-12">
        <div class="span2">
            <li class="dropdown-submenu">
                <a tabindex="-1" href="#">ระบบการตั้งรหัส</a>
                <ul class="dropdown-menu">
                  <!--<li><a tabindex="-1" href="#"></a></li>-->
                  <li class="dropdown-submenu">
                    <a href="#">รหัสผู้ใช้งานโปรแกรม</a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/usercode"/>">บันทึกรหัสผู้ใช้งานโปรแกรม</a></li>
                        <li><a href="<c:url value="/userprivilege"/>">บันทึกสิทธิ์เข้าใช้โปรแกรม</a></li>
                    </ul>
                  </li>
                  <li class="dropdown-submenu">
                    <a href="#">รหัสประเภทบัตร</a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/cardtype?search=0"/>">บันทึกรหัสประเภทบัตร</a></li>
                    </ul>
                  </li>
                  <li class="dropdown-submenu">
                    <a href="#">รูปแบบการคำนวณค่าปรับ</a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/finetype?search=0"/>">บันทึกรูปแบบการคำนวณค่าปรับ</a></li>
                    </ul>
                  </li>
                  <li class="dropdown-submenu">
                    <a href="#">อัตราค่าบริการติดตามหนี้</a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/debtfollowuprate?search=0"/>">บันทึกอัตราค่าบริการติดตามหนี้</a></li>
                    </ul>
                  </li>
                </ul>
            </li>
        </div>
        <div class="span2">
            <li class="dropdown-submenu">
                <a tabindex="-1" href="#">ระบบหลักทรัพย์</a>
                <ul class="dropdown-menu">
                  <li class="dropdown-submenu">
                    <a href="#">หลักทรัพย์ประเภทรถ</a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/vehicletype?search=0"/>">บันทึกรหัสประเภทรถ</a></li>
                        <li><a href="<c:url value="/vehiclebrand?search=0"/>">บันทึกรหัสยี่ห้อรถ</a></li>
                        <!--<li><a href="<c:url value="/vehicleconnectivity"/>">บันทึกรหัสอุปกรณ์ติดรถ</a></li>-->
                        <li><a href="<c:url value="/vehiclesecurities?search=0"/>">บันทึกหลักทรัพย์ประเภทรถ</a></li>
                    </ul>
                  </li>
                  <li class="dropdown-submenu">
                    <a href="#">หลักทรัพย์อสังหาริมทรัพย์</a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/propertytype"/>">บันทึกรหัสประเภทอสังหาริมทรัพย์</a></li>
                        <li><a href="<c:url value="/propertylocation"/>">บันทึกรหัสที่ตั้งหลักทรัพย์</a></li>
                        <li><a href="<c:url value="/propertydetail"/>">บันทึกหลักทรัพย์ประเภทอสังหาริมทรัพย์</a></li>
                    </ul>
                  </li>
                  <li class="dropdown-submenu">
                    <a href="#">หลักทรัพย์ประเภทอื่นๆ</a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/othersecuritiestype"/>">บันทึกรหัสประเภทหลักทรัพย์อื่นๆ</a></li>
                        <li><a href="<c:url value="/othersecuritiesbrand"/>">บันทึกรหัสยี่ห้อหลักทรัพย์อื่นๆ</a></li>
                        <li><a href="<c:url value="/othersecuritiesdetail"/>">บันทึกหลักทรัพย์ประเภทอื่นๆ</a></li>
                    </ul>
                  </li>                     
                </ul>
            </li>
        </div> 
        <div class="span2">
            <li class="dropdown-submenu">
                <a tabindex="-1" href="#">ระบบการ์ดลูกหนี้</a>
                <ul class="dropdown-menu">
                  <li><a href="<c:url value="/customerprofile"/>">ประวัติผู้เช่าซื้อ/ผู้ค้ำ</a></li>
                  <li><a href="<c:url value="/hirepurchasecard"/>">การ์ดลูกหนี้ผู้เช่าซื้อ</a></li>
                  <li><a href="<c:url value="/loancard"/>">การ์ดลูกหนี้เงินกู้</a></li>                      
                </ul>
            </li>
        </div> 
        <div class="span2">
            <li class="dropdown-submenu">
                <a tabindex="-1" href="#">ระบบการเงิน</a>
                <ul class="dropdown-menu">
                  <li><a href="#">บันทึกใบเสร็จรับเงิน</a></li>
                  <li><a href="#">บันทึกค่าบริการติดตามหนี้</a></li>
                  <li><a href="#">บันทึกส่วนลดปิดบัญชี</a></li> 
                  <li><a href="#">บันทึกใบกำกับภาษี</a></li>
                </ul>
            </li>
        </div>
        <div class="span2">
            <li class="dropdown-submenu">
                <a tabindex="-1" href="#">ระบบรายงาน</a>
                <ul class="dropdown-menu">
                  <li class="dropdown-submenu"><a href="#">รายงานสินค้าคงเหลือ</a></li>
                  <li class="dropdown-submenu"><a href="#">รายงานการ์ดลูกหนี้</a></li>
                  <li class="dropdown-submenu"><a href="#">รายงานการรับเงิน</a></li>
                  <li class="dropdown-submenu"><a href="#">รายงานอื่นๆ</a></li>
                  <li class="dropdown-submenu"><a href="#">รายงานเชิงวิเคราะห์</a></li>
                </ul>
            </li>
        </div>
    </div>        
</div>
<!--    <div id="tabMenu1" class="span2" style="display: none">
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" style="float: left;padding-left: 175px;">
                <li class="dropdown">
                    <a href="#" title="บันทึกรหัสพื้นฐาน" class="dropdown-toggle" data-toggle="dropdown" onmouseover="showSubMenu('usercode','block');">บันทึกรหัสพื้นฐาน <b class="caret"></b></a>
                    <ul id="usercode" class="dropdown-menu">
                        <li>
                          <a href="<c:url value="/usercode"/>">บันทึกรหัสผู้ใช้งานโปรแกรม</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" title="หลักทรัพย์ประเภทรถ" class="dropdown-toggle" data-toggle="dropdown">หลักทรัพย์ประเภทรถ <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                            <li><a href="<c:url value="/cartype"/>">บันทึกรหัสประเภทรถ</a></li>
                            <li><a href="<c:url value="/carbrand"/>">บันทึกรหัสยี่ห้อรถ</a></li>
                            <li><a href="<c:url value="/carconnectivity"/>">บันทึกรหัสอุปกรณ์ติดรถ</a></li>
                            <li><a href="<c:url value="/carsecurities"/>">บันทึกหลักทรัพย์ประเภทรถ</a></li>
                        </ul>
                </li>
                <li class="dropdown">
                    <a href="#" title="หลักทรัพย์อสังหาริมทรัพย์" class="dropdown-toggle" data-toggle="dropdown">หลักทรัพย์อสังหาริมทรัพย์ <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                            <li><a href="<c:url value="/propertytype"/>">บันทึกรหัสประเภทอสังหาริมทรัพย์</a></li>
                            <li><a href="<c:url value="/propertylocation"/>">บันทึกรหัสที่ตั้งหลักทรัพย์</a></li>
                            <li><a href="<c:url value="/propertydetail"/>">บันทึกหลักทรัพย์ประเภทอสังหาริมทรัพย์</a></li>
                        </ul>
                </li>
                <li class="dropdown">
                    <a href="#" title="หลักทรัพย์ประเภทอื่นๆ" class="dropdown-toggle" data-toggle="dropdown">หลักทรัพย์ประเภทอื่นๆ <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                            <li><a href="<c:url value="/othersecuritiestype"/>">บันทึกรหัสประเภทหลักทรัพย์อื่นๆ</a></li>
                            <li><a href="<c:url value="/othersecuritiesbrand"/>">บันทึกรหัสยี่ห้อหลักทรัพย์อื่นๆ</a></li>
                            <li><a href="<c:url value="/othersecuritiesdetail"/>">บันทึกหลักทรัพย์ประเภทอื่นๆ</a></li>
                        </ul>
                </li>
            </ul>
        </div>
    </div>-->
<!--    <div id="tabMenu2" class="container" style="display: none">
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" style="float: left;padding-left: 240px;">
                <li><a href="<c:url value="/customerprofile"/>">ประวัติผู้เช่าซื้อ/ผู้ค้ำ</a></li>
                <li><a href="<c:url value="/customercard"/>">การ์ดลูกหนี้ผู้เช่าซื้อ</a></li>
                <li><a href="#">การ์ดลูกหนี้เงินกู้</a></li>
            </ul>
        </div>
    </div>
    <div id="tabMenu3" class="container" style="display: none">
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" style="float: left;padding-left: 240px;">
                <li><a href="#">บันทึกใบเสร็จรับเงิน</a></li>
                <li><a href="#">บันทึกใบกำกับภาษี</a></li>
                <li><a href="#">บันทึกใบรับฝากเงิน</a></li>
                <li><a href="#">บันทึกค่าบริการติดตามหนี้</a></li>
                <li><a href="#">บันทึกส่วนลดปิดบัญชี</a></li>
            </ul>
        </div>
    </div>
    <div id="tabMenu4" class="container" style="display: none">
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" style="float: left;padding-left: 240px;">
                <li><a href="#">รายงานสินค้าคงเหลือ</a></li>
                <li><a href="#">รายงานการ์ดลูกหนี้</a></li>
                <li><a href="#">รายงานการรับเงิน</a></li>
                <li><a href="#">รายงานอื่นๆ</a></li>
                <li><a href="#">รายงานเชิงวิเคราะห์</a></li>
            </ul>
        </div>
    </div>-->
<!--    <div id="tabMenu5" class="container" style="display: none">
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="#">อรรถประโยชน์</a></li>
            </ul>
        </div>
    </div>-->
<!--</div>-->
<!--</nav>-->

    
   
   
   
   

