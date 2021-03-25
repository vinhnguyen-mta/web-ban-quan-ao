<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop online</title>
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${url}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/css/shop.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${url}/css/headers/header-v5.css">
<link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${url}/plugins/animate.css">
<link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${url}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet"
	href="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="${url}/plugins/revolution-slider/rs-plugin/css/settings.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
</head>
<body>
	<!-- Subiz -->
	<script>
		(function(s, u, b, i, z) {
			u[i] = u[i] || function() {
				u[i].t = +new Date();
				(u[i].q = u[i].q || []).push(arguments);
			};
			z = s.createElement('script');
			var zz = s.getElementsByTagName('script')[0];
			z.async = 1;
			z.src = b;
			z.id = 'subiz-script';
			zz.parentNode.insertBefore(z, zz);
		})(document, window, 'https://widgetv4.subiz.com/static/js/app.js',
				'subiz');
		subiz('setAccount', 'acqetkhujxyunuatbxzw');
	</script>
	<!-- End Subiz -->
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">
			<!-- Topbar v3 -->
			<jsp:include page="/view/client/view/topbar.jsp"></jsp:include>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="/view/client/view/navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

	
		<!--=== Product Content ===-->
		<div class="container content-md">


			<div class="heading heading-v1 margin-bottom-20">
				<h2>Featured products</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
					odio elit, ultrices vel cursus sed, placerat ut leo. Phasellus in
					magna erat. Etiam gravida convallis augue non tincidunt. Nunc
					lobortis dapibus neque quis lacinia. Nam dapibus tellus sit amet
					odio venenatis</p>
			</div>

			<!--=== Illustration v2 ===-->
			<div class="illustration-v2 margin-bottom-60">
				<div class="customNavigation margin-bottom-25">
					<a class="owl-btn prev rounded-x"><i class="fa fa-angle-left"></i></a>
					<a class="owl-btn next rounded-x"><i class="fa fa-angle-right"></i></a>
				</div>

				<ul class="list-inline owl-slider">

					<c:forEach items="${pwelcome }" var="p">
						<c:url value="/image?fname=${p.image }" var="imgUrl"></c:url>
						<li class="item">
							<div class="product-img">
								<a
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><img
									width="314" height="414" src="${imgUrl }" alt=""></a> <a
									class="product-review"
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}">Quick
									review</a> <a class="add-to-cart"
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><i
									class="fa fa-shopping-cart"></i>Add to cart</a>
								<div class="shop-rgba-red rgba-banner">Out of stock</div>
							</div>
							<div class="product-description product-description-brd">
								<div class="overflow-h margin-bottom-5">
									<div class="pull-left">${p.name }</a>
										</h4>
										<span class="gender text-uppercase">${p.category.name }</span>
										<span class="gender">best selling</span>
									</div>
									<div class="product-price">
										<span class="title-price">$ ${p.price }</span>

									</div>
								</div>
								<ul class="list-inline product-ratings">
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating fa fa-star"></i></li>
									<li><i class="rating fa fa-star"></i></li>
									<li class="like-icon"><a
										data-original-title="Add to wishlist" data-toggle="tooltip"
										data-placement="left" class="tooltips" href="#"><i
											class="fa fa-heart"></i></a></li>
								</ul>
							</div>
						</li>
					</c:forEach>
				</ul>

			</div>
			<!--=== End Illustration v2 ===-->

			<!--=== Illustration v3 ===-->
			<div class="row margin-bottom-50">
				<div class="col-md-4 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img1"
							href="${pageContext.request.contextPath }/product/category?cate_id=1">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Men</span> 
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-4 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img2"
							href="${pageContext.request.contextPath }/product/category?cate_id=2">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Women</span> 
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img3"
							href="${pageContext.request.contextPath }/product/category?cate_id=3">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Children</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<!--=== End Illustration v3 ===-->

			<div class="heading heading-v1 margin-bottom-40">
				<h2>Latest products</h2>
			</div>

			<!--=== Illustration v2 ===-->
			<div class="row illustration-v2">

				<c:forEach items="${pwelcome }" var="p">
					<c:url value="/image?fname=${p.image }" var="imgUrl"></c:url>

					<div class="col-md-3 col-sm-6 md-margin-bottom-30">
						<div class="product-img">
							<a
								href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><img
								width="314" height="414" src="${imgUrl }" alt=""
								"
							alt=""></a> <a class="product-review"
								href="${pageContext.request.contextPath }/product/detail?id=${p.id}">Quick
								review</a> <a class="add-to-cart"
								href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><i
								class="fa fa-shopping-cart"></i>Add to cart</a>
						</div>
						<div class="product-description product-description-brd">
							<div class="overflow-h margin-bottom-5">
								<div class="pull-left">
									<h4 class="title-price">
										<a
											href="${pageContext.request.contextPath }/product/detail?id=${p.id}">${p.name }</a>

									</h4>
									<span class="gender text-uppercase">${p.category.name }</span>
									<span class="gender">${p.des }</span>

								</div>
								<div class="product-price">
									<span class="title-price">$ ${p.price }</span>
								</div>
							</div>
							<ul class="list-inline product-ratings">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li class="like-icon"><a
									data-original-title="Add to wishlist" data-toggle="tooltip"
									data-placement="left" class="tooltips" href="#"><i
										class="fa fa-heart"></i></a></li>
							</ul>
						</div>
					</div>
				</c:forEach>


			</div>
			<!--=== End Illustration v2 ===-->
		</div>
		<!--=== End Product Content ===-->

		<!--=== Twitter-Block ===-->
		<div class="parallaxBg twitter-block margin-bottom-60">
			<div class="container">
				<div class="heading heading-v1 margin-bottom-20">
					<h2>Latest Tweets</h2>
				</div>

				<div id="carousel-example-generic-v5" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li class="active rounded-x"
							data-target="#carousel-example-generic-v5" data-slide-to="0"></li>
						<li class="rounded-x" data-target="#carousel-example-generic-v5"
							data-slide-to="1"></li>
						<li class="rounded-x" data-target="#carousel-example-generic-v5"
							data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<p>
								Unify has reached 10000 plus sales and we just want to thank you
								to our all customers for being part of the Unify Template
								success <a href="http://bit.ly/1c0UN3Y">http://bit.ly/1c0UN3Y</a>
							<p>
							<p>
								<a href="https://twitter.com/htmlstream">@htmlstream</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
						<div class="item">
							<p>the majority have suffered #alteration in some form, by
								injected humour, or randomised words which don't look even
								slightly believable. If you are going to use a passage of Lorem
								Ipsum</p>
							<p>
								<a href="https://twitter.com/htmlstream">@twbootstrap</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
						<div class="item">
							<p>
								New 100% Free Stock Photos. Every. Single. Day. Everything you
								need for your creative projects. <a href="#">http://publicdomainarchive.com</a>
							</p>
							<p>
								<a href="https://twitter.com/htmlstream">@wrapbootstrap</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
					</div>

					<div class="carousel-arrow">
						<a class="left carousel-control"
							href="#carousel-example-generic-v5" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic-v5" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Twitter-Block ===-->

		
		

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							subscribe to our weekly <strong>newsletter</strong>
						</h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Email your email..."> <span
								class="input-group-btn">
								<button class="btn" type="button">
									<i class="fa fa-envelope-o"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Shop Suvbscribe ===-->

		<!--=== Footer v4 ===-->
		<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script src="${url}/plugins/jquery/jquery.min.js"></script>
	<script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="${url}/plugins/back-to-top.js"></script>
	<script src="${url}/plugins/smoothScroll.js"></script>
	<script src="${url}/plugins/jquery.parallax.js"></script>
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/revolution-slider.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			App.initParallaxBg();
			OwlCarousel.initOwlCarousel();
			RevolutionSlider.initRSfullWidth();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</body>
</html>