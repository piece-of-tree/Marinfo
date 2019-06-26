<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">

<style>
@import
	url('https://fonts.googleapis.com/css?family=Julius+Sans+One|Kosugi+Maru&display=swap')
	;
</style>

<style>
div.card {
	width: 80%;
	height: 260px;
	margin-bottom: 50px;
	border: solid 1px #ffffe0;
	border-radius: 5px;
	background-color: #ff8989;
	left: 200px;
}
</style>

<title>HTML5 Layout sample</title>

<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">

<link rel="stylesheet" href="css/web-grid.css">

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" herf="css/cardstyle.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">


<!-- <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script> -->
<script src="js/jquery-3.4.1.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<script src="js/handle-scroll-event.js"></script>

<script>			

			async function f() {
				$.post("http://13.231.180.101:5000/sendName/",
						{ message: "${account.userName}" });
				return "post";
			}

	</script>

<script>
	

	async function doF() {
	    console.log(await f());
	    

	    // simulate asynchronous processing ...
	    const startMsec = new Date();
	    while (new Date() - startMsec < 4000);
	    
		let count = 0;
		$.getJSON('http://13.231.180.101:5000/feeds/', feeds =>  {

	        for(var i in feeds){
	        	if (count % 3 ==0){
					di = $('<div class="r">');
					$('#feed-list').append(di);
				}
	        	//console.log(feeds[i].channel);
	        	di.append('<div class="card c-3"><div class="font"><p><li><a href="' + feeds[i].link + '">' + feeds[i].title + '<br><br><p class="font2">' + feeds[i].date + '</p></a></li></p>' + feeds[i].channel + '</div></div></div>');
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





</head>

<body>
	<header>
		<div id="site-box">
			<section id="site">
				<h1>
					<a href="#"> <img src="info_logo.png" alt="Marinfo" width="120"
						height="50">
					</a>
				</h1>
				<h2>Welcome ${account.userName}</h2>
			</section>
		</div>

		<div id="nav-box">
			<button type="button" id="menubtn">
				<i class="fa fa-bars"></i>
			</button>
			<div id="menu">
				<ul>
					<li><a href="#">アカウント情報</a></li>
					<li><a href="add-feed.jsp">フィード追加</a></li>
					<li><a href="added-feed_kataoka.jsp">登録済みフィード</a></li>
				</ul>
			</div>
		</div>
	</header>

	<!-- <ul id="feed-list"></ul> -->

	<div id="pane">
		<p id="feed-list"></p>
	</div>

	<div id="endinfo">これ以上記事はありません</div>
</body>

</html>
