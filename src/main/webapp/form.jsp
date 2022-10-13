<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="validator" scope="page" class="kr1.Validator" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<style>
	button {
		margin-top: 1vh;	
	}
	
	form {
		margin-bottom: 2vh;
	}
</style>
</head>
<body>
	<form action="form.jsp" method="POST">
		<div>
			Строка 1: 
			<input type="text" name="first">
		</div>
		<div>
			Строка 2: 
			<input type="text" name="second">
		</div>
		<div>
			Строка 3: 
			<input type="text" name="third">
		</div>
		<button type="submit">Отправить</button>
	</form>
	
	<% 
		String[] parameters = { "first", "second", "third" };
		if(validator.validateAll(request, parameters)) { 
	%>
		<div>
			<p>Длина строки 1: <%= request.getParameter(parameters[0]).length() %></p>
			<p>Длина строки 2: <%= request.getParameter(parameters[1]).length() %></p>
			<p>Длина строки 3: <%= request.getParameter(parameters[2]).length() %></p>
		</div>
	<% } %>
</body>
</html>