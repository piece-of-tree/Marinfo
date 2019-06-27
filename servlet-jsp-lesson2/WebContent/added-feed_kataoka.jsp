<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>added-feed</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/web-grid.css">

<link rel="stylesheet" href="css/cardstyle.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<style>

 body {
        background-image: url("background6.jpg");
        background-attachment: fixed;
        background-size: cover;
        background-position: center center;
  } 
  
  header{
    background-image: url("hearder4.jpg");
    background-size: cover;
    background-position: center center;
    border: double
    border-top: #ff0000 solid 0px;
    border-radius: 0px 0px 10px 10px;
    }
  h1,h2{
    text-align: center;
  font-size: 50px;
  color: white;
  letter-spacing: .05em;
  text-shadow: 4px 4px 0px #FF7F50, 7px 7px 0px rgba(0, 0, 0, 0.2);
  height: 100px;
  padding-top: 20px;
    } 
    
</style>




<script	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<script>			

			async function f() {
				$.post("http://13.231.180.101:5000/sendName_rss/",
						{ user: "${account.userName}" });
				return "post";
			}

</script>

<script>
		$(() => {

			$(document).on('click', '.delete', function(e){
				const title = $(e.target).prevAll().text();
				console.log(title);
				console.log("Hello");
				
				
				$.post("http://13.231.180.101:5000/delete_rss/",
						{ del_title: title, user: "${account.userName}" });
			});
			
			/*
			$('.delete').click(e => {
				//const title = $(e.target.prev).text()
				const title = $(e.target).prevAll().text();
				console.log(title);
				console.log("Hello");
				
				
				$.post("http://13.231.180.101:5000/delete_rss/",
						{ del_title: title, user: "${account.userName}" });
				
			});
			*/
		});
</script>

<script>
//Ajaxに渡すデータ
var dt = { user: "${account.userName}" }; 

//Ajax通信を行う
$.ajax({
    url:"http://13.231.180.101:5000/sendName_rss/",
    type:"POST",
    async: false,
    dataType:"json",
    data:dt
})

	async function doF() {
	    //console.log(await f());
	    
	    
		let count = 0;
		$.getJSON('http://13.231.180.101:5000/get_channels/', data =>  {
			/*
	        for(var i in data){
	        	if (count % 3 ==0){
					di = $('<div class="r">');
					$('#feed-list').append(di);
				}
	        	console.log(data[i]);
	        	di.append('<div class="card c-3"><div class="font"><p><li class = "delete">' + data[i].rss + '<br><br><p class="font2"></p></a></li></p></div></div></div>');
	        	count++;
	        }
	        */
	        
	        for(var i in data){
	        	if (count % 3 ==0){
					di = $('<div class="r">');
					$('#feed-list').append(di);
				}
	        	//console.log(feeds[i].channel);
	        	di.append('<div class="card c-3"><div class="font"><span><li><div>' + data[i].rss + '</div><br><br><button class="delete">ButtonA</button></li></span></div></div>');
	        	count++;
	        	console.log(di)
	        	/*
	        	if (count % 3 ==0){
					di.append('</div>');
				} 
	        	*/
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
			<div id="menu">
				<ul>
					<li><a href="top.jsp">トップ</a>
					<li><a href="add-feed.jsp">フィード追加</a></li>
					<li><a href="logout.do"><strong>ログアウト</strong></a></li>
				</ul>
			</div>
		</div>
	</header>
	<div class="text-center">
		<h1>登録済みフィード一覧</h1>

		<div id="pane">
			<section id="feed-list">
			</section>
		</div>
	</div>

</body>
</html>
