<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 스크립트 -->
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"> </script>
	<script src="js/custom/home.js"> </script>
	
	<!-- 스타일 -->
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/bootstrapCustom.css">
	<link rel="stylesheet" href="/css/main.css">
	<link rel="stylesheet" href="/css/custom/home.css">
	<title>오늘뭐해</title>
	
</head>
<body>
	<jsp:include page="include/topBar.jsp" flush="true"/>
	<div class="mainBody">
		<div class="container">
			<div class="row">
				<div class="col-12 searchPlace">
					<div class="form-group row">
						<div class="col-1 align-self-center align-item-center"> 
					    	검색창
					    </div>
					    <div class="col-12">
					    	<input type="text" class="form-control" id="simpleSearchText" aria-describedby="" placeholder="검색어를 입력하세요">
					    	<button type="submit" class="serachBtn"></button>
					    </div>
  					</div> 
				</div>
				<div class="col-12 no-padding mainPlace">
					<div class="col-12 no-padding">
						<!--Carousel Wrapper-->
						<h5 class="banner-content banner-title">오늘의 추천</h2>
						<!--Indicators-->
						<!-- <ol class="carousel-indicators">
						   <li data-target="#hotBanner" data-slide-to="0" class="active"></li>
						   <li data-target="#hotBanner" data-slide-to="1"></li>
						</ol> -->
					 	<!--/.Indicators-->
						<div id="hotBanner" class="carousel slide " data-ride="carousel">
						  <!--Slides-->
						  <div class="carousel-inner" role="listbox">
						    <!--First slide-->
						    <div class="carousel-item active">
						    	<div class="col-md-12">
									<div class="card slide-card">
							            <div class="row no-gutters card-content">
							              <div class="col-4 col-md-3 slide-card-img">
							                <img src="https://i.ytimg.com/vi/oqMdMtUM7VE/maxresdefault.jpg" alt="" class="card-img full-img" />
							              </div>
							              <div class="col-8 col-md-9 slide-card-text">
							                <div class="card-body">
							                  <p class="card-text card-title">커플의 지옥</p>
							                  <p class="card-text small">커플지옥솔로천국커플지옥솔로천국커플지옥솔로천국커플지옥솔로천국커플지옥솔로천국커플지옥솔로천국</p>
							                  <p class="small">
							                </div>
							              </div>
							            </div>
						          	</div>
						        </div>
						    </div>
						    <!--/.First slide-->
						    <!--Second slide-->
						    <div class="carousel-item">
						      	<div class="col-md-12">
									<div class="card slide-card">
							            <div class="row no-gutters card-content">
							              <div class="col-4 col-md-3 slide-card-img">
							                <img src="https://researchheresy.com/files/attach/images/352/251/001/6c1191aba6f77253d1553809e4866007.PNG" alt="" class="card-img full-img" />
							              </div>
							              <div class="col-8 col-md-9 slide-card-text">
							              	<div class="card-body">
							                  <p class="card-text">솔로 천국도</p>
							                  <pre class="card-text small">솔로 천국 천국 청국장천국</pre>
							                </div>
							              </div>
							            </div>
						          	</div>
						        </div>
						    </div>
						    <!--/.Second slide-->
						  </div>
						  <!--/.Slides-->
						</div>
						<!--/.Carousel Wrapper-->
						<!--Controls-->
						<div class="col-md-12 col-12 banner-control-bottom-div">
						 <div class="offset-4 col-8 offset-md-3 col-md-9 controls-bottom text-right mr-2 banner-controls-bottom">
						   <a class="btn-floating" href="#hotBanner" data-slide="prev"><</a>
						   <a class="btn-floating" href="#hotBanner" data-slide="next">></a>
						 </div>
						</div>
						<!--/.Controls-->
					</div>
					<div class="col-12 no-padding">
						<!--Carousel Wrapper-->
						<h5 class="banner-content banner-title">베스트 데이트장소</h2>
						<!--Indicators-->
						<!-- <ol class="carousel-indicators">
						   <li data-target="#bestBanner" data-slide-to="0" class="active"></li>
						   <li data-target="#bestBanner" data-slide-to="1"></li>
						</ol> -->
					 	<!--/.Indicators-->
						<div id="bestBanner" class="carousel slide " data-ride="carousel">
						  <!--Slides-->
						  <div class="carousel-inner" role="listbox">
						    <!--First slide-->
						    <div class="carousel-item active">
						    	<div class="col-md-12">
									<div class="card slide-card">
							            <div class="row no-gutters card-content">
							              <div class="col-4 col-md-3 slide-card-img">
							                <img src="https://i.ytimg.com/vi/oqMdMtUM7VE/maxresdefault.jpg" alt="" class="card-img full-img" />
							              </div>
							              <div class="col-8 col-md-9 slide-card-text">
							                <div class="card-body">
							                  <p class="card-text card-title">지옥한바퀴</p>
							                  <p class="card-text small">커플지옥솔로천국커플지옥솔로천국커플지옥솔로천국커플지옥솔로천국커플지옥솔로천국커플지옥솔로천국</p>
							                  <p class="small">
							                </div>
							              </div>
							            </div>
						          	</div>
						        </div>
						    </div>
						    <!--/.First slide-->
						    <!--Second slide-->
						    <!-- <div class="carousel-item">
						      	<div class="col-md-12">
									<div class="card slide-card">
							            <div class="row no-gutters card-content">
							              <div class="col-4 col-md-3 slide-card-img">
							                <img src="https://researchheresy.com/files/attach/images/352/251/001/6c1191aba6f77253d1553809e4866007.PNG" alt="" class="card-img full-img" />
							              </div>
							              <div class="col-8 col-md-11 slide-card-text">
							                <div class="card-body">
							                  <p class="card-text">아몰랑</p>
							                  <p class="card-text small">솔로 천국 천국 청국장천국</p>
							                  <p class="small">
							                </div>
							              </div>
							            </div>
						          	</div>
						        </div>
						    </div> -->
						    <!--/.Second slide-->
						  </div>
						  <!--/.Slides-->
						</div>
						<!--/.Carousel Wrapper-->
						<!--Controls-->
						<div class="col-md-12 col-12 banner-control-bottom-div">
						 <div class="offset-4 col-8 offset-md-3 col-md-9 controls-bottom text-right mr-2 banner-controls-bottom">
						   <a class="btn-floating" href="#bestBanner" data-slide="prev"><</a>
						   <a class="btn-floating" href="#bestBanner" data-slide="next">></a>
						 </div>
						</div>
						<!--/.Controls-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>