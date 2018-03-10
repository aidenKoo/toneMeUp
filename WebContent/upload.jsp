<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.github.io/templates/events/theme.css" type="text/css">
  <title>Image Upload</title>
  <meta name="description" content="An unique event to discuss about Pingendo and its features">
  <meta name="keywords" content="Pingendo conference event venue NYC">
  <script src="https://pingendo.com/assets/scripts/navbar-cover.js"></script>
  <script language='javascript' type='text/javascript'>
//<![CDATA[

var fm;

function fncInit() {
    fm  = document.frm;
}

function setFile() {
    fm.file.click();
    fm.text1.value  = fm.file.value;
}

//]]>
</script>
</head>

<body class="text-center">

  <div class="py-5 section bg-primary" id="register">
    <div class="container">
<!--       <div class="row">
        <div class="col-md-12">
          <img class="img-fluid d-block m-3 p-3 mx-auto h-25 w-75" src="image/main.png"> 
          </div>
      </div> -->
      <div class="row">
        <div class="col-md-6 align-self-center py-0">
          <img class="img-fluid d-block h-40" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
          <div class="row">
            <div class="col-md-12">
            <form name='frm' method="post" enctype="multipart/form-data" action="imgup.jsp">
           	<input type="file" name="file" size=40 style='display:none;'>
           	<input type="text" name="text1"><img src="image/upload.png" onclick='javascript_:setFile();'>
              <input type="submit" value="사진 올리기"><br><br>

                <body onload='javascript_:fncInit();'>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="row"> </div>
          <div class="row m-0">
            <div class="col-md-12 m-0"> </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <img class="img-fluid d-block" src="image/picture2.png">
            </div>
          </div>
          <img class="img-fluid d-block" src="image/description.png">
          
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
  <script src="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.min.js"></script>
  <script src="https://pingendo.com/assets/scripts/smooth-scroll.js"></script>
  <script src="https://pingendo.com/assets/scripts/slidein-images.js"></script>
</body>

</html>