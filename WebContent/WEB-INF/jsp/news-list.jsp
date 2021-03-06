<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>


<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>

<c:set var="temp_img" value="http://via.placeholder.com/400x500"/>
<!-- ENDS page variables -->

<!-- i18n -->
<c:set var="loc" value="zh_CN"/>
<c:if test="${!(empty param.lang)}">
  <c:set var="loc" value="${param.lang}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- END i18n -->

<!DOCTYPE html>
<html dir="ltr">
<head>
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113930092-3"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-113930092-3');
	</script>

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
		<section id="page-title" class="page-title section-bg">

			<div class="container clearfix">
				<h1><spring:message code="news-list-pagetitle"/></h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html?lang=${loc}"><spring:message code="menu-home"/></a></li>
					<li class="breadcrumb-item active" aria-current="page"><spring:message code="menu-news"/></li>
				</ol>
			</div>
		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		
		<section id="content" class="">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="postcontent nobottommargin">

						<div id="posts" class="events small-thumbs">
							
							<c:forEach var="news" items="${listNews}">
								<div class="entry clearfix">
									<div class="entry-image">
										<a href="#">
											<img src="${news.primaryEventMedia.mediaURL}${news.primaryEventMedia.mediaName}" alt="news">
											<div class="entry-date"><fmt:formatDate pattern="dd" value="${news.postDate}" /><span><fmt:formatDate pattern="MMM" value = "${news.postDate}" /></span></div>
										</a>
									</div>
									<div class="entry-c">
										<div class="entry-title">
											<h2><a href="/event/news/${news.eventUUID}">${news.title}</a></h2>
										</div>
										<ul class="entry-meta clearfix">
											<!-- <li><span class="badge badge-warning">Private</span></li> -->
											<li><i class="icon-time"></i><fmt:formatDate type="date" pattern="yyyy-MMM-dd E" value = "${news.postDate}" /></li>
											<!-- <li><a href="#"><i class="icon-map-marker2"></i> Melbourne, Australia</a></li>  -->
										</ul>
										<div class="entry-content">
											<p>${news.descShort}</p>
											<!-- <a href="#" class="btn btn-secondary" disabled="disabled">Buy Tickets</a>  --> 
											<a href="/event/news/${news.eventUUID}" class="btn btn-danger"><spring:message code="news-list-btn-viewall"/></a>
										</div>
									</div>
								</div>
								
							</c:forEach>
							
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
								<li class="page-item"><a class="page-link" href="/event/news?pageNo=${page.page-1<=0?1:page.page-1}">&laquo;</a></li>
								<c:forEach var="pageNo" begin="1" end="${page.totalPage}" step="1">
									<c:if test="${page.page == pageNo}">
										<li class="page-item active"><a class="page-link" href="/event/news?pageNo=${pageNo}">${pageNo}</a></li>
									</c:if>
									<c:if test="${page.page != pageNo}">
										<li class="page-item"><a class="page-link" href="/event/news?pageNo=${pageNo}">${pageNo}</a></li>
									</c:if>
								</c:forEach>
								<li class="page-item"><a class="page-link" href="/event/news?pageNo=${page.page+1>page.totalPage?page.totalPage:page.page+1}">&raquo;</a></li>
								</ul>
							</div>
							
							
						</div>
						<!-- .pager end -->

					</div>

					<div class="sidebar nobottommargin col_last clearfix">
						<div class="sidebar-widgets-wrap">
                            <!-- 
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
							
 							-->	
 							
 							
 													
							
							<div class="widget clearfix">

								<h4>热门新闻与活动</h4>
								<div id="oc-portfolio-sidebar" class="owl-carousel carousel-widget" data-items="1" data-margin="10" data-loop="true" data-nav="false" data-autoplay="5000">
									
									<c:forEach var="news" items="${listNews}">
									<div class="oc-item">
										<div class="iportfolio">
											<div class="portfolio-image">
												<a href="/event/news/${news.eventUUID}">
													<img src="${news.primaryEventMedia.mediaURL}${news.primaryEventMedia.mediaName}" alt="Mac Sunglasses">
												</a>
												
											</div>
											<div class="portfolio-desc center nobottompadding">
												<span><a href="/event/news/${news.eventUUID}">${news.title}</a></span>
												<!-- <span><a href="#"><fmt:formatDate type="date" pattern="yyyy-MMM-dd E" value = "${news.postDate}" /></a></span> -->
											</div>
										</div>
									</div>
									</c:forEach>
									
								</div>
							</div>
							
							
							
							
							<div class="widget clearfix">

								<h4><spring:message code="news-list-ad"/></h4>
								<div id="post-list-footer">
									<c:forEach var="adPost" items="${listAdPostRcmd}">
									<div class="spost clearfix">
										<div class="entry-image">
											<a href="#" class="nobg"><img src="${adPost.adImage}" alt=""></a>
										</div>
										<div class="entry-c">
											<div class="entry-title1">
												<p><strong>${adPost.adTitle}</strong><br/>
												${fn:substring(adPost.adText,0,30)}...</p>
											</div>
										</div>
									</div>
									</c:forEach>
								</div>
							</div>
							
						</div>
					</div>
					
					<!-- 
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

					 -->
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