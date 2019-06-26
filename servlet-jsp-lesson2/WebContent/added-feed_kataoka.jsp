<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>added-feed</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">
<link rel="stylesheet" href="css\style.css">

<script>			

			async function f() {
				$.post("http://13.231.180.101:5000/sendName_rss/",
						{ user: "${account.userName}" });
				return "post";
			}

</script>

<script>
		$(() => {
			$('.mybtn').click(e => {
				console.log($(e.target).text());
			});
		});
</script>

<script>
	

	async function doF() {
	    console.log(await f());
	    

	    // simulate asynchronous processing ...
	    const startMsec = new Date();
	    while (new Date() - startMsec < 4000);
	    
		let count = 0;
		$.getJSON('http://13.231.180.101:5000/get_channels/', data =>  {

	        for(var i in data){
	        	if (count % 3 ==0){
					di = $('<div class="r">');
					$('#feed-list').append(di);
				}
	        	console.log(data[i]);
	        	di.append('<div class="card c-3"><div class="font"><p><li class = "delete">' + data[i].rss + '<br><br><p class="font2"></p></a></li></p></div></div></div>');
	        	count++;
	        }
			
		});
	    
	}

	doF();
		
		
</script>

<script>
	$(() => {
		$("#menubtn").on('click', () => {
			$("#menu").slideToggle();
			});
			});
  </script>
<style>
.tittle {
	
}

figure {
	border-width: 5px;
}
</style>
</head>

<body>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<header>
		<div id="site-box">
			<section id="site">
				<h1>
					<a href="#"> <img src="info_logo.png" width="120" height="50">
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
					<li><a href="top.jsp">トップ</a>
					<li>
					<li><a href="#">アカウント情報</a></li>
					<li><a href="add-feed.jsp">フィード追加</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<div class="jumbotron text-center">
		<h1>登録済みフィード一覧</h1>
		<h2>Welcome ${account.userName}</h2>

		<div id="pane">
			<p id="feed-list"></p>
		</div>
	</div>




</body>
</html>
