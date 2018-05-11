<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>


<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>

<c:set var="temp_img" value="http://via.placeholder.com/400x500"/>
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
	<title>News &amp; Events - List | ZSHMTL</title>

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
		<section id="page-title" class="page-title">

			<div class="container clearfix">
				<h1>新闻动态与活动</h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html">Home</a></li>
					<li class="breadcrumb-item"><a href="/news-list.html">Team</a></li>
					<li class="breadcrumb-item active" aria-current="page">News &amp; Events</li>
				</ol>
			</div>

		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="postcontent nobottommargin">

						<div id="posts" class="events small-thumbs">
							
							<c:forEach var="news" items="${listNews}">
								<div class="entry clearfix">
									<div class="entry-image">
										<a href="#">
											<img src="/images/events/thumbs/1.jpg" alt="news">
											<div class="entry-date"><fmt:formatDate pattern="dd" value="${news.postDatetime}" /><span><fmt:formatDate pattern="MMM" value = "${news.postDatetime}" /></span></div>
										</a>
									</div>
									<div class="entry-c">
										<div class="entry-title">
											<h2><a href="/event/news/${news.eventUUID}">${news.title}</a></h2>
										</div>
										<ul class="entry-meta clearfix">
											<!-- <li><span class="badge badge-warning">Private</span></li> -->
											<li><i class="icon-time"></i><fmt:formatDate type="date" pattern="yyyy-MMM-dd E" value = "${news.postDatetime}" /></li>
											<!-- <li><a href="#"><i class="icon-map-marker2"></i> Melbourne, Australia</a></li>  -->
										</ul>
										<div class="entry-content">
											<p>${news.descShort}</p>
											<a href="#" class="btn btn-secondary" disabled="disabled">Buy Tickets</a> <a href="/event/news/${news.eventUUID}" class="btn btn-danger">Read More</a>
										</div>
									</div>
								</div>
								
							</c:forEach>
							
							
							<div class="entry clearfix">
								<div class="entry-image">
									<a href="#">
										<img src="/images/events/thumbs/1.jpg" alt="Inventore voluptates velit totam ipsa tenetur">
										<div class="entry-date">10<span>Apr</span></div>
									</a>
								</div>
								<div class="entry-c">
									<div class="entry-title">
										<h2><a href="#">Inventore voluptates velit totam ipsa tenetur</a></h2>
									</div>
									<ul class="entry-meta clearfix">
										<li><span class="badge badge-warning">Private</span></li>
										<li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
										<li><a href="#"><i class="icon-map-marker2"></i> Melbourne, Australia</a></li>
									</ul>
									<div class="entry-content">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga.</p>
										<a href="#" class="btn btn-secondary" disabled="disabled">Buy Tickets</a> <a href="/news-single.html" class="btn btn-danger">Read More</a>
									</div>
								</div>
							</div>

							<div class="entry clearfix">
								<div class="entry-image">
									<a href="#">
										<img src="/images/events/thumbs/2.jpg" alt="Nemo quaerat nam beatae iusto minima vel">
										<div class="entry-date">16<span>Apr</span></div>
									</a>
								</div>
								<div class="entry-c">
									<div class="entry-title">
										<h2><a href="#">Nemo quaerat nam beatae iusto minima vel</a></h2>
									</div>
									<ul class="entry-meta clearfix">
										<li><span class="badge badge-danger">Urgent</span></li>
										<li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
										<li><a href="#"><i class="icon-map-marker2"></i> Perth, Australia</a></li>
									</ul>
									<div class="entry-content">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga.</p>
										<a href="#" class="btn btn-info">RSVP</a> <a href="#" class="btn btn-danger">Read More</a>
									</div>
								</div>
							</div>

							<div class="entry clearfix">
								<div class="entry-image">
									<a href="#">
										<img src="/images/events/thumbs/3.jpg" alt="Ducimus ipsam error fugiat harum recusandae">
										<div class="entry-date">3<span>May</span></div>
									</a>
								</div>
								<div class="entry-c">
									<div class="entry-title">
										<h2><a href="#">Ducimus ipsam error fugiat harum recusandae</a></h2>
									</div>
									<ul class="entry-meta clearfix">
										<li><span class="badge badge-info">Public</span></li>
										<li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
										<li><a href="#"><i class="icon-map-marker2"></i> Melbourne, Australia</a></li>
									</ul>
									<div class="entry-content">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga.</p>
										<a href="#" class="btn btn-secondary">Buy Tickets</a> <a href="#" class="btn btn-danger">Read More</a>
									</div>
								</div>
							</div>

							<div class="entry clearfix">
								<div class="entry-image">
									<a href="#">
										<img src="/images/events/thumbs/4.jpg" alt="Nisi officia adipisci molestiae aliquam">
										<div class="entry-date">16<span>Jun</span></div>
									</a>
								</div>
								<div class="entry-c">
									<div class="entry-title">
										<h2><a href="#">Nisi officia adipisci molestiae aliquam</a></h2>
									</div>
									<ul class="entry-meta clearfix">
										<li><span class="badge badge-warning">Private</span></li>
										<li><a href="#"><i class="icon-time"></i> 12:00 - 18:00</a></li>
										<li><a href="#"><i class="icon-map-marker2"></i> New York</a></li>
									</ul>
									<div class="entry-content">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga.</p>
										<a href="#" class="btn btn-info">RSVP</a> <a href="#" class="btn btn-danger">Read More</a>
									</div>
								</div>
							</div>

						</div>

						<!-- Pagination
						============================================= -->
						<div class="row mb-3">
							<div class="col-12">
							<!-- 
								<a href="#" class="btn btn-outline-secondary float-left">&larr; Older</a>
								<a href="#" class="btn btn-outline-dark float-right">Newer &rarr;</a>
							 -->	
								<ul class="pagination">
								<li class="page-item"><a class="page-link" href="/event/news?page=${page.page+1>page.totalPage?page.totalPage:page.page+1}">&laquo;</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
								</ul>
							</div>
							
							
						</div>
						<!-- .pager end -->

					</div>

					<div class="sidebar nobottommargin col_last clearfix">
						<div class="sidebar-widgets-wrap">

							<div class="widget clearfix">

								<h4>Upcoming Events</h4>
								<div id="post-list-footer">

									<div class="spost clearfix">
										<div class="entry-image">
											<a href="#" class="nobg"><img src="/images/events/thumbs/1.jpg" alt=""></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h4>
											</div>
											<ul class="entry-meta">
												<li>10th July 2014</li>
											</ul>
										</div>
									</div>

									<div class="spost clearfix">
										<div class="entry-image">
											<a href="#" class="nobg"><img src="/images/events/thumbs/2.jpg" alt=""></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">Elit Assumenda vel amet dolorum quasi</a></h4>
											</div>
											<ul class="entry-meta">
												<li>10th July 2014</li>
											</ul>
										</div>
									</div>

									<div class="spost clearfix">
										<div class="entry-image">
											<a href="#" class="nobg"><img src="/images/events/thumbs/3.jpg" alt=""></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
											</div>
											<ul class="entry-meta">
												<li>10th July 2014</li>
											</ul>
										</div>
									</div>

								</div>

							</div>

							<div class="widget clearfix">

								<h4>Events</h4>
								<div id="oc-portfolio-sidebar" class="owl-carousel carousel-widget" data-items="1" data-margin="10" data-loop="true" data-nav="false" data-autoplay="5000">

									<div class="oc-item">
										<div class="iportfolio">
											<div class="portfolio-image">
												<a href="#">
													<img src="/images/events/thumbs/3.jpg" alt="Mac Sunglasses">
												</a>
												<div class="portfolio-overlay">
													<a href="http://vimeo.com/89396394" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
												</div>
											</div>
											<div class="portfolio-desc center nobottompadding">
												<h3><a href="portfolio-single-video.html">Inventore voluptates velit totam ipsa tenetur</a></h3>
												<span><a href="#">Melbourne, Australia</a></span>
											</div>
										</div>
									</div>

									<div class="oc-item">
										<div class="iportfolio">
											<div class="portfolio-image">
												<a href="portfolio-single.html">
													<img src="/images/events/thumbs/1.jpg" alt="Open Imagination">
												</a>
												<div class="portfolio-overlay">
													<a href="/images/portfolio/full/1.jpg" class="center-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>
												</div>
											</div>
											<div class="portfolio-desc center nobottompadding">
												<h3><a href="portfolio-single.html">Nisi officia adipisci molestiae aliquam</a></h3>
												<span><a href="#">Perth, Australia</a></span>
											</div>
										</div>
									</div>

								</div>


							</div>

							<div class="widget clearfix">

								<h4>Recent Event in Video</h4>
								<iframe src="//player.vimeo.com/video/103927232" width="500" height="250" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

							</div>

							<div class="widget quick-contact-widget clearfix">

								<h4>Quick Contact</h4>
								<div class="quick-contact-form-result"></div>
								<form id="quick-contact-form" name="quick-contact-form" action="include/quickcontact.php" method="post" class="quick-contact-form nobottommargin">
									<div class="form-process"></div>

									<input type="text" class="required sm-form-control input-block-level" id="quick-contact-form-name" name="quick-contact-form-name" value="" placeholder="Full Name" />
									<input type="text" class="required sm-form-control email input-block-level" id="quick-contact-form-email" name="quick-contact-form-email" value="" placeholder="Email Address" />
									<textarea class="required sm-form-control input-block-level short-textarea" id="quick-contact-form-message" name="quick-contact-form-message" rows="4" cols="30" placeholder="Message"></textarea>
									<input type="text" class="hidden" id="quick-contact-form-botcheck" name="quick-contact-form-botcheck" value="" />
									<button type="submit" id="quick-contact-form-submit" name="quick-contact-form-submit" class="button button-small button-3d nomargin" value="submit">Send Email</button>
								</form>


							</div>

						</div>
					</div>

				</div>

			</div>

		</section><!-- #content end -->
		
		
		<!-- Footer
		============================================= -->
		<jsp:include page="${inc_dir}/footer_inc.jsp"/>
	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script src="/js/jquery.js"></script>
	<script src="/js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/js/functions.js"></script>

</body>
</html>