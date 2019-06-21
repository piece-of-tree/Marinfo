<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>HTML5 Layout sample</title>

		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">
		<link rel="stylesheet" href="style.css">

		<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script>
			$(() => {
				$("#menubtn").on('click', () => {
					$("#menu").slideToggle();
				});
			});
		</script>
	<meta charset="utf-8">
	<title>Supported-rss</title>
	<style>
		.tittle{

		}
		figure{
			border-width: 5px;
		}
	</style>
</head>
<body>
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

	<h1>サポートサイト</h1>
<form>

	<input type="text" name="URL" placeholder="Input URL"><button type="button">add</button>
</form>

<div id="list">
	<div class="shinbunlist">
    	 <p class="shinbun">
			 <a href=""><img src="bce42c38916ac7163646a2f461e1a51f.png" width="100px"><font size="6">読売新聞</font><button class="button" type="button">add</button>
			</a>
		</p>
	</div>

	<div class="shinbunlist">
    	<p class="shinbun">					
    		<a href=""><img class="image" src="ogimage.png" width="100px";><font size="6">読売新聞</font><button class="button" type="button">add</button>
   			 </a>
		</p>
	</div>

</body>
</html>