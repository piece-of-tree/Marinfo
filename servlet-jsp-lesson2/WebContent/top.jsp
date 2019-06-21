<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Top</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	</head>
	<body class="#efebe9 brown lighten-5">
		<div class="container">
			<nav>
				<div class="nav-wrapper #a1887f brown lighten-2">
					<a href="#" class="brand-logo">Top</a>
					<ul id="nav-mobile" class="right hide-on-med-and-down">
						<li>LastLoginTime: <javatime:format value="${account.lastLoginTime}" pattern="hh:mm:ss" /></li>
						<li><a href="logout.do"><i class="material-icons">exit_to_app</i></a></li>
					</ul>
				</div>
			</nav>
			<h1>Login Successful</h1>
			<h2>Welcome ${account.userName}</h2>
		</div>
	</body>
</html>