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
body {
	background-image: url("background6.jpg");
	background-attachment: fixed;
	background-size: cover;
	background-position: center center;
}

header {
	/*background-color: white;*/
	background-image: url("hearder4.jpg");
	/* background-attachment: fixed;*/
	background-size: cover;
	background-position: center center;
	/*border-width: 5px;*/
	border: double border-top: #ff0000 solid 0px;
	border-radius: 0px 0px 10px 10px;
}
</style>

<title>HTML5 Layout sample</title>

<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">

<link rel="stylesheet" href="css/web-grid.css">

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/cardstyle.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


<!-- <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script> -->
<script src="js/jquery-3.4.1.min.js"></script>



<script src="js/handle-scroll-event.js"></script>

<script>			

			async function f() {
				$.post("http://13.231.180.101:5000/sendName/",
						{ message: "${account.userName}" });
				return "post";
			}

	</script>

<script>
//Ajaxに渡すデータ
var dt = { message: "${account.userName}" }; 

//Ajax通信を行う
$.ajax({
    url:"http://13.231.180.101:5000/sendName/",
    type:"POST",
    async: false,
    dataType:"json",
    data:dt
})
	
	

	function doF() {
	    //console.log(await f());
	    
	    
	    

	    // simulate asynchronous processing ...
	    //const startMsec = new Date();
	    //while (new Date() - startMsec < 4000);
	    
		let count = 0;
		$.getJSON('http://13.231.180.101:5000/feeds/', feeds =>  {

	        for(var i in feeds){
	        	if (count % 3 ==0){
					di = $('<div class="r">');
					$('#feed-list').append(di);
				}
	        	//console.log(feeds[i].channel);
	        	di.append('<div class="card c-3"><div class="font"><span><li><a href="' + feeds[i].link + '">' + feeds[i].title + '<br><br><span class="font2">' + feeds[i].date + '</span></a></li></span><span ="channel">' + feeds[i].channel + '</span></div></div>');
	        	count++;
	        	if (count % 3 ==0){
					di.append('</div>');
				}
	        	
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
			</section>
		</div>

		<div id="nav-box">
			<button type="button" id="menubtn">
				<i class="fa fa-bars"></i>
			</button>
			<div id="menu">
				<ul>
					<li><a href="add-feed.jsp"><strong>フィード追加</strong></a></li>
					<li><a href="added-feed_kataoka.jsp"><strong>登録済みフィード</strong></a></li>
					<li><a href="#"><strong>ログアウト</strong></a></li>
				</ul>
			</div>
		</div>
	</header>

	<!-- <ul id="feed-list"></ul> -->

	<div id="pane">
		<section id="feed-list"></section>
	</div>

	<div id="endinfo">これ以上記事はありません</div>
</body>

</html>
