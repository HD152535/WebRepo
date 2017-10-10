<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>My Blog</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  <link rel="stylesheet" href="/WebClass/css/master2.css"/>
</head>

<body>
  <!-- 메뉴바 -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="home.html">My Blog</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
          <a class="nav-link" href="/WebClass/myblog/introduce.html">Introduce<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
          <a class="nav-link" href="/WebClass/myblog/habby.html">Hobby</a>
        </li>
        <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
          <a class="nav-link" href="/WebClass/myblog/favorite.html">Favorite</a>
        </li>
      </ul>

     <%
            UserVO user = (UserVO) session.getAttribute("user");
            if (user == null) {
         %>
         <ul class="nav justify-content-end">
            <li class="nav-item"><a class="nav-link" href = "/WebClass/bloglogin" style="color: white">Login</a></li>
            <li class="nav-item"><a class="nav-link" href = "/WebClass/myblog/signup.html" style="color: white">Register</a></li>
         </ul>
         <%
            } else {
         %>
         <ul class="nav justify-content-end">
            <li class="nav-item dropdown"><a
               class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
               id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false"> <%=user.getName() + "님"%>
            </a>
            <div class="dropdown-menu dropdown-menu-right"
                  aria-labelledby="bd-versions">
                  <form action="/WebClass/bloglogout" method="post">
                     <button type="submit" class="dropdown-item">Sign out</button>
                  </form>
               </div></li>
         </ul>
         <%
            }
         %>

    </div>
  </nav>

  <div class="modal" id="myModal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Login-Result</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
          <p></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script type="text/javascript" src="../js/master.js"></script>
  <div class="gaeun">
    <div class="container">
      <h1 class="display-3">Hello, Everyone!</h1>
      <p>JSP 웹프로그래밍 실습과제 개인블로그 만들기입니다</p>
    </div>
  </div>

  <div class="container">
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-md-4">
        <h2>Introduce</h2>
        <p>ChoiGaeun - Introduce</p>
        <p><a class="btn btn-secondary" href="introduce.html" role="button">View details &raquo;</a></p>
      </div>
      <div class="col-md-4">
        <h2>Hobby</h2>
        <p>ChoiGaeun - Hobby</p>
        <p><a class="btn btn-secondary" href="habby.html" role="button">View details &raquo;</a></p>
      </div>
      <div class="col-md-4">
        <h2>Favorite</h2>
        <p>ChoiGaeun - Favorite</p>
        <p><a class="btn btn-secondary" href="favorite.html" role="button">View details &raquo;</a></p>
      </div>
    </div>
  </div>
</body>

</html>
