<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>LogIn</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/signin.css">
</head>
<body>
<%
   String id=request.getParameter("id");
   String pwd=request.getParameter("pwd");
   String name=request.getParameter("name");
   String nickname=request.getParameter("nickname");
   if(id==null) id="";
   if(pwd==null) pwd="";
   if(name==null) name="";
   if(nickname==null) nickname="";
%>
<div class="container">

  <form class="form-signin" action="/WebClass/login" method="post">
    <h2 class="form-signin-heading">Please sign in</h2>
    
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" value="<%=id%>" name="id" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" value="<%=pwd%>" name="pwd" id="inputPassword" class="form-control" placeholder="Password" required>

    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  </form>

</div>

<%@ include file="modal.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script>

   <%
      if("error".equals(request.getAttribute("msg"))){ //만약 에러가있다면, 즉 사용자가 invalid한 로그인정보를 입력햇다면 msg모달 출력
         
   %>
   
      var myModal = $('#myModal');
      myModal.find('.modal-title').text('Login Error');
      myModal.find('.modal-body').text('Invalid username or password');
      myModal.modal();
      
   <% } %>
   
</script>

</body>
</html>