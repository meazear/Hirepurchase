<%-- 
    Document   : mainMenu
    Created on : Apr 6, 2014, 2:16:30 PM
    Author     : FUJITSU
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


    
    <nav class="navbar navbar-default" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!--<div class="navbar-brand">Leasing System</div>-->
            </div> 
                
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
              <ul class="nav navbar1-nav1">    
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">บันทึกรหัสพื้นฐาน <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">บันทึกรหัสผู้ใช้งานโปรแกรม</a></li>
                    <li><a href="#">บันทึกรหัสประเภทบัตร</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
                <li><a href="<c:url value="/customerprofile"/>">Customer Profile</a></li>
                <li><a href="<c:url value="/main"/>">Card Receivables</a></li>
                <li><a href="<c:url value="/main"/>">Receipt</a></li>
                <li><a href="<c:url value="/main"/>">Tax Invoice</a></li>
                <li><a href="<c:url value="/main"/>">Deposit Receipt</a></li>
                <li><a href="<c:url value="/logout"/>">Logout</a></li>
<!--                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
              <form class="navbar1-form navbar1-left" role="search">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
              </form>
              <ul class="nav navbar1-nav1 navbar1-right">
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </li>
              </ul>-->
            </div><!-- /.navbar-collapse -->
          </nav>

