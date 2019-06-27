<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>

<!DOCTYPE html>
<html>
<head>
<title>追加Feed</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">
<link rel="stylesheet" href="css\style1.css">
<link rel="stylesheet" href="addFeed.css">
<!-- 	<script>
			$(() => {
				$("#menubtn").on('click', () => {
					$("#menu").slideToggle();
				});
			});
		</script> -->
<meta charset="utf-8">
<style>
 body {
        background-image: url("background6.jpg");
        background-attachment: fixed;
        background-size: cover;
        background-position: center center;
  } 
  header{
    /*background-color: white;*/
    background-image: url("hearder4.jpg");
   /* background-attachment: fixed;*/
    background-size: cover;
    background-position: center center;
    /*border-width: 5px;*/
    border: double
    border-top: #ff0000 solid 0px;
    border-radius: 0px 0px 10px 10px;

  }
  figure{
			border-width: 5px;
  }
    .container{
      text-align: center;
    }
    .col-md-4{
      left: 80px;
    }
    .input{
    padding-bottom: 20;
    
 #welcome{
    text-align: center;
  font-size: 50px;
  color: #2c2c2c;
  letter-spacing: .05em;
  text-shadow: 4px 4px 0px #FF7F50, 7px 7px 0px rgba(0, 0, 0, 0.2);
  height: 100px;
  padding-top: 5px;
    }
    h2{
color: white;
font-size: 2em;
text-shadow: 0 1px 0 #ccc, 0 2px 0 black, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0,0,0,.1), 0 0 5px rgba(0,0,0,.1), 0 1px 3px rgba(0,0,0,.3), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.15);
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
	
	<script>
    $(function(){
        $('#rss_button').click(function(){
        	var form = document.forms.URL.URL_text.value;  
        	console.log(form);
          $.post("http://13.231.180.101:5000/sendRSS/",
            { user: "${account.userName}", url: form },
            $('#rss_button').attr('value','追加済み'),
            alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
            );
        });
      });	
	</script>
	
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
			<nav id="menu">
				
				<ul>
					<li><a href="top.html"><strong>トップ</strong></a>
          <li><a href="#"><strong>アカウント情報</strong></a></li>
          <li><a href="added-feed.html"><strong>登録済みフィード</strong></a></li>
				</ul>
			</nav>
		</div>
	</header>
	<div class="text-center">
	<br>
	<h1 id="welcome">Welcome ${account.userName}</h1>	
		<form name="URL">
			<input class="input" type="text" name="URL_text" placeholder="Input URL to add feed">
			<button" id="rss_button" class="btn btn-primary">追加</button>
		</form>
	<br>
	</div>
<p>&nbsp</p>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card" id="card1" style="width: 11rem;">
					<a href=""><img src="img/asahi.jpg" class="card-img-top"></a>
					<div class="card-body">
						<h5 class="card-title">
							<strong>朝日新聞</strong>
						</h5>
						<input type="button" id="button1" class="btn btn-primary"
							value="追加" />
					</div>
				</div>
			</div>




			<div class="col-md-4">
				<div class="card" id="card2" style="width: 11em;">
					<a href=""><img src="img/mainichi.jpg" class="card-img-top"></a>
					<div class="card-body">
						<h5 class="card-title">
							<strong>毎日新聞</strong>
						</h5>
						<input type="button" id="button2" class="btn btn-primary"
							value="追加" />
					</div>
				</div>
			</div>




			<div class="col-md-4">
				<div class="card" id="card3" style="width: 11em;">
					<a href=""><img src="img/nikkei.jpg" class="card-img-top"></a>
					<div class="card-body">
						<h5 class="card-title">
							<strong>日経新聞</strong>
						</h5>
						<input type="button" id="button3" class="btn btn-primary"
							value="追加" />
					</div>
				</div>
			</div>
		</div>

		<p>&nbsp</p>
		<div class="row">
			<div class="col-md-4">
				<div class="card" id="card4" style="width: 11em;">
					<a href=""><img src="img/ogimage.png" class="card-img-top"></a>
					<div class="card-body">
						<h5 class="card-title">
							<strong>読売新聞</strong>
						</h5>
						<input type="button" id="button4" class="btn btn-primary"
							value="追加" />
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card" id="card5" style="width: 11em;">
					<a href=""><img src="img/sankei.jpg" class="card-img-top"></a>
					<div class="card-body">
						<h5 class="card-title">
							<strong>産経新聞</strong>
						</h5>
						<input type="button" id="button5" class="btn btn-primary"
							value="追加" />
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card" id="card6" style="width: 11em;">
					<a href=""><img src="img/ntvNew.png" class="card-img-top"></a>
					<div class="card-body">
						<h5 class="card-title">
							<strong>日テレ News</strong>
						</h5>
						<input type="button" id="button6" class="btn btn-primary"
							value="追加" />

					</div>
				</div>
			</div>
		</div>

		<p>&nbsp</p>

		<div class="row">
			<div class="col-md-4">
				<div class="card" id="card7" style="width: 11em;">
					<a href=""><img src="img/nhk.png" class="card-img-top"></a>
					<div class="card-body">
						<h5 class="card-title">
							<strong>NHK News</strong>
						</h5>
						<input type="button" id="button7" class="btn btn-primary"
							value="追加" />
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" id="card9" style="width: 11em;">
					<a href=""><img src="img/yahoo.jpg" class="card-img-top"></a>
					<div class="card-body">
						<h5 class="card-title">
							<strong>Yahoo News</strong>
						</h5>
						<input type="button" id="button9" class="btn btn-primary"
							value="追加" />

					</div>
				</div>
			</div>
		</div>
		<script>
      $(function(){
        $('#button1').click(function(){
          $.post("http://13.231.180.101:5000/sendtext/",
            { user: "${account.userName}", ID: "朝日新聞", url: 'http://www3.asahi.com/rss/digital.rdf' },
            $('#button1').attr('value','追加済み'),
            alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
             card1.style.background = '#93ff93',
            );
        });
      });

      $(function(){
        $('#button2').click(function(){
          $.post("http://13.231.180.101:5000/sendtext/",
            { user: "${account.userName}", ID: "毎日新聞", url: 'https://mainichi.jp/rss/etc/mainichi-flash.rss'},
            $('#button2').attr('value','追加済み'),
             alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
            card2.style.background = '#93ff93'
            );
        });
      });

      $(function(){
        $('#button3').click(function(){
          $.post("http://13.231.180.101:5000/sendtext/",
            { user: "${account.userName}", ID: "日経新聞", url: 'https://assets.wor.jp/rss/rdf/nikkei/news.rdf'},
            $('#button3').attr('value','追加済み'),
             alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
            card3.style.background = '#93ff93'
            );
        });
      });

      $(function(){
        $('#button4').click(function(){
          $.post("http://13.231.180.101:5000/sendtext/",
            { user: "${account.userName}", ID: "読売新聞", url: 'https://assets.wor.jp/rss/rdf/yomiuri/latestnews.rdf' },
            $('#button4').attr('value','追加済み'),
             alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
            card4.style.background = '#93ff93'
            );
        });
      });

      $(function(){
        $('#button5').click(function(){
          $.post("http://13.231.180.101:5000/sendtext/",
            { user: "${account.userName}", ID: "産経新聞", url: 'https://assets.wor.jp/rss/rdf/sankei/affairs.rdf' },
            $('#button5').attr('value','追加済み'),
             alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
            card5.style.background = '#93ff93'
            );
        });
      });

      $(function(){
        $('#button6').click(function(){
          $.post("http://13.231.180.101:5000/sendtext/",
            { user: "${account.userName}", ID: "日テレ News", url: 'http://www.news24.jp/rss/index.rdf' },
            $('#button6').attr('value','追加済み'),
             alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
            card6.style.background = '#93ff93'
            );
        });
      });

      $(function(){
        $('#button7').click(function(){
          $.post("http://13.231.180.101:5000/sendtext/",
            { user: "${account.userName}", ID: "NHK News", url: 'https://www3.nhk.or.jp/rss/news/cat0.xml' },
            $('#button7').attr('value','追加済み'),
             alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
            card7.style.background = '#93ff93'
            );
        });
      });

      $(function(){
        $('#button9').click(function(){
          $.post("http://13.231.180.101:5000/sendtext/",
            { user: "${account.userName}", ID: "Yahoo News", url: 'https://news.yahoo.co.jp/pickup/rss.xml' },
            $('#button9').attr('value','追加済み'),
             alert("正常にフィードが追加されました"),
            $(this).prop("disabled",true),
            card9.style.background = '#93ff93'
            );
        });
      });

      
    </script>
		<!-- <script>
  const button1 = document.getElementById('button1')
  const button2 = document.getElementById('button2')
  const button3 = document.getElementById('button3')
  const button4 = document.getElementById('button4')   
  const button5 = document.getElementById('button5')
  const button6 = document.getElementById('button6')
  const button7 = document.getElementById('button7')
  const button8 = document.getElementById('button8')
  const button9 = document.getElementById('button9')
  button1.onclick = function(){
    button1.value = '追加済み';
    card1.style.background = '#93ff93';
    
  };
    
  button2.onclick = function(){
    button2.value = '追加済み';

  };
   button3.onclick = function(){
    button3.value = '追加済み';
  };
   button4.onclick = function(){
    button4.value = '追加済み';
  };
   button5.onclick = function(){
    button5.value = '追加済み';
  };
   button6.onclick = function(){
    button6.value = '追加済み';
    card6.style.background = '#93ff93';
  };
   button7.onclick = function(){
    button7.value = '追加済み';
  };
  button8.onclick = function(){
    button8.value = '追加済み';
  };
  button9.onclick = function(){
    button9.value = '追加済み';
  };
</script>  -->
</body>
</html>