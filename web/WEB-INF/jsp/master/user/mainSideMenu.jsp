<%-- 
    Document   : mainSideMenu
    Created on : Apr 11, 2014, 7:30:16 PM
    Author     : FUJITSU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<style type="text/css">
    body{
    	padding-top: 70px;
    }
    @media (min-width: 700px) {
    .navbar1-collapse {
      height: auto;
      border-top: 0;
      box-shadow: none;
      max-height: none;
      padding-left:0;
      padding-right:0;
    }
    .navbar1-collapse.collapse {
      display: block !important;
      width: auto !important;
      padding-bottom: 0;
      overflow: visible !important;
    }
    .navbar1-collapse.in {
      overflow-x: visible;
    }

    .navbar1
    {
            max-width:250px;
            margin-right: 0;
            margin-left: 0;
            
    /*background-color:#FFF;*/
    border-radius: 7px;
    position: fixed;
    float: left;
    }	

    .navbar1-nav1,
    .navbar1-nav1 > li,
    .navbar1-left,
    .navbar1-right,
    .navbar1-header
    {float:none !important;}

    .navbar1-right .dropdown-menu {left:0;right:auto;}
    .navbar1-collapse .navbar1-nav1.navbar1-right:last-child {
        margin-right: 0;
    }
    }
    #banner-fade,
    #banner-slide{
            margin-bottom: 60px;
    }
</style>
<div class="sidebar-nav">
    <div class="navbar1 navbar1-default">
      <div class="navbar1-header">
        <span class="visible-sm visible-xs navbar1-brand">Sidebar menu</span>
      </div>
      <div class="navbar1-collapse collapse sidebar-navbar1-collapse">
        <ul id="menu" class="nav navbar1-nav1">  
            <li class="nav-header" style="color:#692FC0">เมนูลัด</li>
            <li><a href="<c:url value="/customerprofile"/>" style="color:#692FC0">ประวัติผู้เช่าซื้อ/ผู้ค้ำ</a></li>
            <li><a href="<c:url value="/hirepurchasecard"/>" style="color:#692FC0">การ์ดลูกหนี้ผู้เช่าซื้อ</a></li>
            <li><a href="<c:url value="/loancard"/>" style="color:#692FC0">การ์ดลูกหนี้เงินกู้</a></li>
            <li><a href="#" style="color:#692FC0">ใบเสร็จรับเงิน</a></li>
            <li><a href="<c:url value="/logout"/>" style="color:#692FC0">ออกจากระบบ</a></li>

        </ul>
      </div>
    </div>
</div>
