<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>

<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>Paper Stack</title>
	<link rel="stylesheet" type="text/css" href="css/sign-insty.css">


</head>
<body>
	
	<div class="container">
		<section id="content">
		<h1>アカウント登録</h1>
			<!--  
			<form action="">
				<h1>アカウント登録</h1>
				<div>
					<input type="text" placeholder="Username" required="" id="username" />
				</div>
				<div>
					<input type="password" placeholder="Password" required=""  />
				</div>
				<div>
					<input type="password" placeholder="Password" required="" />
				</div>
				<div>
					<input type="submit" value="Sign Up" />
					
				</div>

			</form>
			-->
			
			<div class="row">
				<form class="col s12" action="sign-up.do" method="post">
					<div class="row">
						<div class="input-field col s6">
							<input id="user_name" name="userName" type="text" class="validate" 
							       placeholder="Username" autofocus required>
		
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input name="password1" type="password"
								   placeholder="Password"　class="validate" required>
	
						</div>
						<div class="input-field col s12">
							<input name="password2" type="password"
								   placeholder="Password"　class="validate" required>

						</div>
					</div>
					<input class="btn waves-effect #d7ccc8 brown lighten-4"
						   id = ""type="submit" value="Sign Up">
					<p class="red-text darken-2">${error}</p>
				</form>
			</div>
			
		</section><!-- content -->
	</div><!-- container -->
</body>
</html>