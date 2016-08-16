<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Student Application</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
       <ul>
            <li><a href="./stud_application.html">Student Application</a></li>
            <li><a href="./admin_login.html">Administration Login</a></li>
            <li><a href="./stud_login.html">Student Login</a></li>
            <li><a href="./faculty_login.html">Staff Login</a></li>
          </ul>
    </nav>
    <!-- ################################################################################################ --> 
  </div>
</div>

<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="../index.html">Student Management Portal</a></h1>
      <p>Alibata University</p>
    </div>
    <div class="fl_right">
      <form class="clear" method="post" action="#">
        <fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here">
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>

<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
       <li class="active"><a href="index.html">Home</a></li>
        <li><a class="drop" href="#">Services</a>
          <ul>
            <li><a href="./stud_application.html">Student Application</a></li>
            <li><a href="./admin-login.html">Administration Login</a></li>
            <li><a href="./student-login.html">Student Login</a></li>
            <li><a href="./faculty-login.html">Staff Login</a></li>
          </ul>
        </li>
        <li><a href="./stud_application.html">Student Application</a></li>
        <li><a href="#">Mission</a></li>
        <li><a href="#">Alumni</a></li>
        <li><a href="#">Careers</a></li>
        <li><a href="#">This is the last</a></li>
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>

<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="sidebar one_quarter first"> 
        <!-- ################################################################################################ -->
        <h6>Student Application</h6>
       
        <div class="sdb_holder">
          <h6>Application Rules</h6>
         <p> Fill up the information sheet on the right side. Do not leave any blanks all data are <font color="red"><b>required</b></font> to be filled up.</p>
        </div>
        <div class="sdb_holder">
          <article>
            <h6>Qualification</h6>
            <p>The following are the qualifications for the entrance examination: </p>
            <ul>
              <li>Local and foreign students can take the entrance exam.</li>
              <li>Passed the IELTS exam.</li>
              <li>Complete documents provided by the Office of the Registrar.</li>
            </ul>
            <p>If you have all the items above then you can fill up the form and proceed with the examination fees.</p>
          </article>
        </div>
        <!-- ################################################################################################ --> 
      </div>
      
      <div id="content" class="three_quarter"> 
        <!-- ################################################################################################ -->
        <h1>Student Application Form</h1>
        <c:if test="${ dataEntry ne '' }">
           <h3><font color="RED"><c:out value="${ dataEntry }"/></font> </h3>
        </c:if>
        
        <form:form commandName="applicationForm" method="POST">
              <label for="name">First Name <span>*</span></label>
              <form:input path="firstName" size="100"/>
              
              <label for="name">Last Name <span>*</span></label>
               <form:input path="lastName" size="100"/>
              
              <label for="name">Middle Name <span>*</span></label>
               <form:input path="midName" size="100"/>
              
              <label for="name">Birth Date <span>*</span></label>
              <form:input path="birthDate" size="100"/>
              
              <label for="name">Gender <span>*</span></label>
              <form:select path="gender" items="${ gender }"/>
              
              <label for="name">Address <span>*</span></label>
              <form:input path="address" size="100"/>
           
              <label for="name">Mobile <span>*</span></label>
              <form:input path="mobile" size="100"/>
              
              <label for="email">E-Mail <span>*</span></label>
              <form:input path="email" size="100"/>
              
              
              <label for="name">Username <span>*</span></label>
              <form:input path="username" size="100"/>
              
              <label for="name">Password <span>*</span></label>
              <form:input path="password" size="100"/>
            <div>
              <input name="submit" type="submit" value="Submit Form">
              &nbsp;
              <input name="reset" type="reset" value="Reset Form">
            </div>
          </form:form>
 
        </div>
        
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>

<div class="wrapper row4">
  <div class="rounded">
    <footer id="footer" class="clear"> 
      <!-- ################################################################################################ -->
      <div class="one_third first">
        <figure class="center"><img class="btmspace-15" src="../images/demo/worldmap.png" alt="">
          <figcaption><a href="#">Find Us With Google Maps &raquo;</a></figcaption>
        </figure>
      </div>
      <div class="one_third">
        <address>
        Alibata University<br>
        Makati City, Manila<br>
        Philippines<br>
        1233<br>
        <br>
        <i class="fa fa-phone pright-10"></i> +63 939917 5107<br>
        <i class="fa fa-envelope-o pright-10"></i> <a href="#">admin@alibata-university.com</a>
        </address>
      </div>
      <div class="one_third">
        <p class="nospace btmspace-10">Stay Up to Date With What's Happening</p>
        <ul class="faico clear">
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-flickr" href="#"><i class="fa fa-flickr"></i></a></li>
          <li><a class="faicon-rss" href="#"><i class="fa fa-rss"></i></a></li>
        </ul>
        <form class="clear" method="post" action="#">
          <fieldset>
            <legend>Subscribe To Our Newsletter:</legend>
            <input type="text" value="" placeholder="Enter Email Here&hellip;">
            <button class="fa fa-sign-in" type="submit" title="Sign Up"><em>Sign Up</em></button>
          </fieldset>
        </form>
      </div>
      <!-- ################################################################################################ --> 
    </footer>
  </div>
</div>

<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Webmaster</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.alibatabusiness.com/" title="Alibata University">OS Templates</a></p>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>