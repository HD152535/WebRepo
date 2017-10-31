<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Scope</title>
</head>
<body>
	<form action="/WebClass/scope" method ="post">
		<input type="text" name="id">
		<input type="hidden" name="pwd" value="text">
		<button type="submit">전송</button>
	</form>

	<h1>id : <%= request.getParameter("id") %></h1>
	<h1>pwd : <%= request.getParameter("pwd") %></h1>
	<h1>rValue : <%= request.getAttribute("key") %></h1>
	<h1>sValue : <%= session.getAttribute("key") %></h1>
	<h1>aValue : <%= application.getAttribute("key") %></h1>
	
	<!-- EL로 수정하기 -->
	<h1>id : ${ param.id }</h1>
	<h1>pwd :${ param.pwd }</h1>
	<h1>rValue : ${ key }</h1>
	<h1>sValue : ${ sessionScope.key }</h1>
	<h1>aValue : ${ applicationScope.key }</h1>
	
	<hr>
	<form action="/WebClass/jsp/scope2.jsp" method="post">
		<button type="submit">전송</button>
	</form>
	<script>
	<% 
		String error =(String)request.getAttribute("error");
		if(error!=null)
		{	
	%>
		alert('<%= error %>');
	<%
		}
		
	%>
	</script>
	
</body>
</html>