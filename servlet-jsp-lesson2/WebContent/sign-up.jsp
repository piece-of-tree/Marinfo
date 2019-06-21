<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Sign-Up</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
		<script	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	</head>
	<body class="#efebe9 brown lighten-5 brown-text">
		<div class="container">
			<h1>Sign Up</h1>
			<div class="row">
				<form class="col s12" action="sign-up.do" method="post">
					<div class="row">
						<div class="input-field col s6">
							<input id="user_name" name="userName" type="text" class="validate" 
							       placeholder="input your name" autofocus required>
							<label for="user_name">Username</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="password" name="password1" type="password"
								   class="validate" required>
							<label for="password">Password</label>
						</div>
						<div class="input-field col s12">
							<input id="password" name="password2" type="password"
								   class="validate" required>
						    <label for="password">Password</label>
						</div>
					</div>
					<input class="btn waves-effect #d7ccc8 brown lighten-4"
						   type="submit" value="Sign Up">
					<p class="red-text darken-2">${error}</p>
				</form>
			</div>
		</div>
	</body>
</html>