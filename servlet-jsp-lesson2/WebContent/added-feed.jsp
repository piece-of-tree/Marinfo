<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>added-feed</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">
  <link rel="stylesheet" href="style.css">
  <script>
	$(() => {
		$("#menubtn").on('click', () => {
			$("#menu").slideToggle();
			});
			});
  </script>
  <style>
		.tittle{

		}
		figure{
			border-width: 5px;
		}
 </style>
</head>

<body>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script> 
	<header>
			<div id="site-box">
				<section id="site">
					<h1>
						<a href="#">
							<img src="info_logo.png"
							     width="120" height="50">
						</a>
					</h1>
				</section>
			</div>
		
			<div id="nav-box">
				<button type="button" id="menubtn">
					<i class="fa fa-bars"></i>
				</button>
				<nav id="menu">
					<ul>
						<li><a href="#">ログイン</a></li>
						<li><a href="#">フィード追加</a></li>
						<li><a href="#">フィード一覧</a></li>
						<li><a href="#">設定</a></li>
						
					</ul>
				</nav>
			</div>
	</header>
<div class="jumbotron text-center">
  <h1>登録済みフィード</h1>
</div>




</body>
</html>


 