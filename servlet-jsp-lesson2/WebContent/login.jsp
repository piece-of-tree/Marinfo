<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	</head>
	<body class="#efebe9 brown lighten-5 brown-text">
	    <div class="container ">
	        <h1>Login</h1>
	        <div class="row">
	            <form class="col s12" action="login.do" method="post">
	                <div class="row">
	                	<div class="input-field col s6">
	                    	<input id="user_name" name="userName" type="text" class="validate"
	                               placeholder="input your name" autofocus> 
	                        <label for="user_name">Username</label>
	                    </div>
                	</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="password" name="password" type="password" class="validate">
							<label for="password">Password</label>
						</div>
					</div>
					<input class="btn waves-effect #d7ccc8 brown lighten-4" type="submit" value="Login">
					<p class="red-text darken-2">${error}</p>
				</form>
				<div>New member: <a href="sign-up">Sign-Up</a></div>
			</div>
		</div>
	</body>
</html>


