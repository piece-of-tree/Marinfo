<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>追加Feed</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">
		<link rel="stylesheet" href="style.css">
		<script>
			$(() => {
				$("#menubtn").on('click', () => {
					$("#menu").slideToggle();
				});
			});
		</script>
	<meta charset="utf-8">
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
</head>
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

  	<h1>フィード追加</h1>


	<form>

		<input class="input" type="text" name="URL" placeholder="Input URL"><button type="button">追加</button>

	</form>

 </div>

<div class="container">
  <div class="row">
    <div class="col-md-4">
    	<div class="card" style="width: 11rem;">
      		<img src="asahi.jpg" class="card-img-top">
        	<div class="card-body">
          <h5 class="card-title"><strong>朝日新聞</strong></h5>
          <a href="#" class="btn btn-primary">追加</a>
        </div>
      </div>
    </div>


  
    <div class="col-md-4">
  	 <div class="card" style="width: 11em;">
      <img src="mainichi.jpg" class="card-img-top">
        <div class="card-body">
          <h5 class="card-title"><strong>毎日新聞</strong></h5>
          <a href="#" class="btn btn-primary">追加</a>
        </div>
      </div>
    </div>



       
   <div class="col-md-4">
  	 <div class="card" style="width: 11em;">
      <img src="nikkei.jpg" class="card-img-top">
        <div class="card-body">
          <h5 class="card-title"><strong>日経新聞</strong></h5>
          <a href="#" class="btn btn-primary">追加</a>
        </div>
      </div>
    </div>
 
</div>

  <div class="row">
    <div class="col-md-4">
  	 <div class="card" style="width: 11em;">
      <img src="ogimage.png" class="card-img-top">
        <div class="card-body">
          <h5 class="card-title"><strong>読売新聞</strong></h5>
          <a href="#" class="btn btn-primary">追加</a>
        </div>
      </div>
    </div>


    <div class="col-md-4">
  	 <div class="card" style="width: 11em;">
      <img src="sankei.jpg" class="card-img-top">
        <div class="card-body">
          <h5 class="card-title"><strong>産経新聞</strong></h5>
          <a href="#" class="btn btn-primary">追加</a>
        </div>
      </div>
    </div>


   <div class="col-md-4">
  	 <div class="card" style="width: 11em;">
      <img src="yahoo.jpg" class="card-img-top">
        <div class="card-body">
          <h5 class="card-title"><strong>Yahoo! News</strong></h5>
          <a href="#"><button class="btn btn-primary">追加</button></a>
          <button onclick="myFunction()"><span>add</span></button>
        </div>
      </div>
    </div>
 </div>

<script>
	var div = document.getElementByTagName(span);
	function myFunction(){
		div.innerHTML = '追加済み';
		alert("Chào mừng bạn đến với freetuts.net");
	};
</script>	


	




</body>
</html>