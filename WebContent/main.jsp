<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.github.io/templates/events/theme.css" type="text/css">
  <title>TONE ME UP</title>
  <meta name="description" content="An unique event to discuss about Pingendo and its features">
  <meta name="keywords" content="Pingendo conference event venue NYC">
  <script src="https://pingendo.com/assets/scripts/navbar-cover.js"></script>
  <script src="weather.js" type="text/javascript" charset="UTF-8"></script>
    <%@ page import = "colorPicker.ColorPickerMod" %>
    <%@ page import = "faceDetaction.FaceDetaction" %>
    <%@ page import = "weather.weatherMain" %>
    <%
    String filepath = (String) request.getAttribute("filepath");
    ColorPickerMod test;
    if( filepath != null ){
    	test = new ColorPickerMod(filepath);
    	System.out.println("성공");
    }else
      test = new ColorPickerMod();// 생성자는 기본, 스트링(파일패스), 파일, 버퍼 이미지 4가지로 생성 가능하다.
	
      //test.returnTone(); // 0 혹은 1을 리턴한다.
    %>
</head>

<body class="text-center">

<%-- <%String path = request.getContextPath();%>
"<%=path%>/get_weather.action" --%>
  <nav class="navbar navbar-expand-md fixed-top bg-primary navbar-light">
    <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse justify-content-center" id="navbar2SupportedContent">
        <!-- <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.html#speakers">speakers</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="schedule.html">schedule</a>
          </li>
        </ul> -->
        <a class="mx-3 btn navbar-btn btn-info" href="upload.jsp">진단하러가기</a>
      </div>
    </div>
  </nav>
  <div class="d-flex align-items-center text-left h-50" id="cover" style="background-image:url('personalcolor2.png')">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <h1 class="display-2" style="color: white;">TONE ME UP</h1>
          <h5 style="color: white;">PERSONAL COLOR</h5>
          <!-- <a href="#register" class="btn btn-lg btn-info mt-4">Register</a> -->
        </div>
      </div>
    </div>
  </div>
   <div class="py-5" id="speakers">
    <div class="container">
      <div class="row">
        <div class="col-md-12"></div>
      </div>
      <div class="row">
        <div class="col-md-12">
        <%
        
        switch (test.returnSeasonTone()){
        
        case 1:%>
        <h1 class="mb-4">당신은 봄 웜톤 입니다<%=test.tempReturnSeasonTone()%></h1>
        <%break;
        
        case 2:%>
        <h1 class="mb-4">당신은 여름 쿨톤 입니다<%=test.tempReturnSeasonTone()%></h1>
        <%break;
        
        case 3:%>
        <h1 class="mb-4">당신은 가을 웜톤 입니다<%=test.tempReturnSeasonTone()%></h1>
        <%break;
        
        case 4:%>
        <h1 class="mb-4">당신은 겨울 쿨톤 입니다<%=test.tempReturnSeasonTone()%></h1>
        <%break;}%>
        </div>
      </div>
      <div class="result">
        <%
        switch (test.returnSeasonTone()){
        
        case 1:%>
        <img src="image/spring.png" class="center-block img-fluid my-3">
        <%break;
        
        case 2:%>
        <img src="image/summer.png" class="center-block img-fluid my-3">
        <%break;
        
        case 3:%>
        <img src="image/autumn.png" class="center-block img-fluid my-3">
        <%break;
        
        case 4:%>
        <img src="image/winter.png" class="center-block img-fluid my-3">
        <%break;}%>
        
      </div>
    </div>
  </div>
  <div class="py-5" id="schedule">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
           <h1 class="mb-4">Daily Color</h1>
        	<%
            switch (test.returnSeasonTone()){
            
            case 1:%>
            <img src="image/daily_spring.png" class="center-block img-fluid my-3">
            <%break;
            
            case 2:%>
            <img src="image/daily_summer.png" class="center-block img-fluid my-3">
            <%break;
            
            case 3:%>
            <img src="image/daily_autumn.png" class="center-block img-fluid my-3">
            <%break;
            
            case 4:%>
            <img src="image/daily_winter.png" class="center-block img-fluid my-3">
            <%break;}%>           
          </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <a href="schedule.html" class="btn btn-outline-primary my-4">Go to schedule</a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 section bg-faded" id="sponsors">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-gray-dark mb-4">Sponsors</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3">
          <img class="center-block img-fluid d-block mx-auto" src="https://pingendo.github.io/templates/events/logo_1.png"> </div>
        <div class="col-md-3">
          <img class="center-block img-fluid d-block mx-auto" src="https://pingendo.github.io/templates/events/logo_4.png"> </div>
        <div class="col-md-3">
          <img class="center-block img-fluid d-block mx-auto" src="https://pingendo.github.io/templates/events/logo_3.png"> </div>
        <div class="col-md-3">
          <img class="center-block img-fluid d-block mx-auto" src="https://pingendo.github.io/templates/events/logo_2.png"> </div>
      </div>
    </div>
  </div>
  <div class="py-5 section bg-primary" id="register">
    <div class="container">
      <div class="row w-75 mx-auto">
        <div class="col-md-12">
          <h1 class="text-white mb-4">Kit 구매하기</h1>
          <p class="mb-4">당신의 톤에 맞춘 맟춤형 컬러 kit을 판매합니다.</p>
          <a class="btn btn-lg btn-info" href="#cover">$5에 kit구매</a>
        </div>
      </div>
    </div>
  </div>
  <div class="section bg-inverse" style="background-image: url(&quot;https://pingendo.github.io/templates/events/venue.jpg&quot;);">
    <div class="container-fluid ">
      <div class="row" id="venue">
        <div class="align-self-center col-lg-6 col-md-12">
          <h1 class="my-3">Kookmin Univ.</h1>
          <p class="lead">Kookmin University
            <br>Management Information Systems
            <br>Tone Me Up</p>
        </div>
        <div class="p-0 col-lg-6 col-md-12">
          <img class="img-fluid already-visible" src="https://maps.googleapis.com/maps/api/staticmap?key=AIzaSyDW8nO9JhT_pEjebobq9pgUF2cEp0EUb1I&amp;center=empire+state+building&amp;zoom=15&amp;size=640x400&amp;sensor=false&amp;scale=2"> </div>
      </div>
    </div>
  </div>
  <footer class="text-left bg-faded py-4" id="footer">
    <div class="container">
      <div class="row">
        <div class="my-3 col-lg-4 col-md-6">
          <h3 class="pi-item">Conference Tone Me Up</h3>
          <p>December 06-15, 2017</p>
          <p class="my-3">
            <a href="https://www.google.com/maps" target="blank" class="text-gray-dark">Empire State building 350 5th Ave,&nbsp;
              <br>Kookmin Univ. C-413</a>
          </p>
          <a class="btn btn-info btn-lg" href="#register">Register</a>
        </div>
        <div class="my-3 col-lg-4 col-md-6">
          <h3 class="pi-item">Contact us</h3>
          <form>
            <fieldset class="form-group my-3">
              <input type="email" class="form-control" id="Input Email" placeholder="Email"> </fieldset>
            <fieldset class="form-group my-3">
              <input type="message" class="form-control" id="Input Message" placeholder="Message"> </fieldset>
            <button type="submit" class="btn btn-outline-info">Submit</button>
          </form>
        </div>
        <div class="my-3 col-lg-4 col-md-12">
          <h3 class="pi-item">Follow</h3>
          <a href="https://www.facebook.com" target="blank"><i class="fa fa-3x fa-facebook-square m-3 text-muted"></i></a>
          <a href="https://www.instagram.com" target="blank"><i class="fa fa-3x fa-instagram m-3 text-muted"></i></a>
          <a href="https://twitter.com" target="blank"><i class="fa fa-3x fa-twitter m-3 text-muted"></i></a>
          <a href="https://plus.google.com" target="blank"><i class="fa fa-3x fa-google-plus-official m-3 text-muted"></i></a>
          <a href="https://pinterest.com" target="blank"><i class="fa fa-3x m-3 text-muted fa-pinterest-p"></i></a>
          <a href="https://www.youtube.com" target="blank"><i class="fa fa-3x m-3 text-muted fa-youtube-play"></i></a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3 text-center">
          <p class="text-muted">Â© Copyright 2017 Tone Me Up - All rights reserved. </p>
        </div>
      </div>
    </div>
  </footer>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
  <script src="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.min.js"></script>
  <script src="https://pingendo.com/assets/scripts/smooth-scroll.js"></script>
  <script src="https://pingendo.com/assets/scripts/slidein-images.js"></script>
</body>

</html>