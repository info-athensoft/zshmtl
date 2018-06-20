<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>


<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>
<!-- ENDS page variables -->

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="" />

	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700|Crete+Round:400i" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="/css/style-zshmtl.css" type="text/css" />
	<link rel="stylesheet" href="/css/swiper.css" type="text/css" />
	<link rel="stylesheet" href="/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="/css/responsive.css" type="text/css" />
	<link rel="stylesheet" href="/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Document Title
	============================================= -->
	<title>Ad - List | ZSHMTL</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="full-header static-sticky">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo
					============================================= -->
					<jsp:include page="${inc_dir}/logo_inc.jsp"/>
					<!-- #logo end -->

					<!-- Primary Navigation
					============================================= -->
					<jsp:include page="${inc_dir}/nav_inc.jsp"/>
					<!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->

		
		<!-- Page Title
		============================================= -->
		<section id="page-title" class="page-title section-bg">
		<!-- <section id="page-title" class="page-title page-title-dark" style="padding: 120px 0; background-image: url('/img/aboutus/overview-1.jpg'); background-size: cover;">  -->

			<div class="container clearfix">
				<h1>广告快车</h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html">Home</a></li>
					<li class="breadcrumb-item"><a href="/ad-list.html">Ad</a></li>
					<li class="breadcrumb-item active" aria-current="page">Ad List</li>
				</ol>
			</div>

		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		
		<!-- image/video ad -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Portfolio Filter
					============================================= -->
					<ul class="portfolio-filter clearfix" data-container="#portfolio">

						<li class="activeFilter"><a href="#" data-filter="*">Show All</a></li>
						<li><a href="#" data-filter=".pf-icons">Icons</a></li>
						<li><a href="#" data-filter=".pf-illustrations">Illustrations</a></li>
						<li><a href="#" data-filter=".pf-uielements">UI Elements</a></li>
						<li><a href="#" data-filter=".pf-media">Media</a></li>
						<li><a href="#" data-filter=".pf-graphics">Graphics</a></li>

					</ul><!-- #portfolio-filter end -->

					<div class="portfolio-shuffle" data-container="#portfolio">
						<i class="icon-random"></i>
					</div>

					<div class="clear"></div>

					<!-- Portfolio Items
					============================================= -->
					<div id="portfolio" class="portfolio grid-container clearfix">
						
						<c:forEach var="adPost" items="${adPostImageList}">
							<article class="portfolio-item pf-media pf-icons">
								<div class="portfolio-image">
									<a href="#">
										<img src="/images/portfolio/4/1.jpg" alt="Business name">
									</a>
									<div class="portfolio-overlay">
										<a href="/images/portfolio/full/1.jpg" class="left-icon" data-lightbox="image" title="IMage"><i class="icon-line-plus"></i></a>
										<a href="#" class="right-icon"><i class="icon-line-ellipsis"></i></a>
									</div>
								</div>
								<div class="portfolio-desc ad-text-height">
									<h3><a href="#">${adPost.globalId}</a></h3>
									<span>${adPost.adText}</span>
									<!-- <span><a href="#">Media</a>, <a href="#">Icons</a></span>  -->
								</div>
							</article>
						</c:forEach>
					</div>
					
					<!-- #portfolio end -->

				</div>

			
<!-- 	
			</div>
		</section>
	
		<section id="content">
			<div class="content-wrap">
 -->

				<div class="container clearfix">

					<!-- Portfolio Filter
					============================================= -->
					<!-- 
					<ul class="portfolio-filter clearfix" data-container="#portfolio2">

						<li class="activeFilter"><a href="#" data-filter="*">Show All</a></li>
						<li><a href="#" data-filter=".pf-icons">Icons</a></li>
						<li><a href="#" data-filter=".pf-illustrations">Illustrations</a></li>
						<li><a href="#" data-filter=".pf-uielements">UI Elements</a></li>
						<li><a href="#" data-filter=".pf-media">Media</a></li>
						<li><a href="#" data-filter=".pf-graphics">Graphics</a></li>

					</ul>

					<div class="portfolio-shuffle" data-container="#portfolio2">
						<i class="icon-random"></i>
					</div>
					 -->
					
					<br/>
					<br/>
					<br/>
					<div class="divider"><i class="icon-circle"></i></div>
					
					<div class="clear"></div>

					<!-- Portfolio Items
					============================================= -->
					<div id="portfolio2" class="portfolio grid-container clearfix">
					
						<c:forEach var="adPost" items="${adPostTextList}">
							<article class="portfolio-item pf-media pf-icons">
								<div class="portfolio-desc ad-text-height">
									<h3><a href="#">${adPost.adTitle}</a></h3>
									<span>${adPost.adText}</span>
								</div>
							</article>
						</c:forEach>


					</div><!-- #portfolio end -->

				</div>
				
			</div>

		</section><!-- #content end -->
		
		<section id="call-to-action" style="margin-bottom:0px;">
			<div class="promo promo-light promo-full header-stick notopborder">
				<div class="container clearfix" style="text-align:center;">
					<h3>Call us today at <span>+1 (514)574-1254</span> or Email us at <span>fenghua18@gmail.com</span></h3>
					<span>We strive to provide Our Customers with Top Notch Support to make their Theme Experience Wonderful</span>
					<!-- <a href="#" class="button button-dark button-xlarge button-rounded">Start Browsing</a>  -->
				</div>
			</div>
		</section>
		
		<!-- Footer
		============================================= -->
		<jsp:include page="${inc_dir}/footer_inc.jsp"/>
	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

</body>
</html>