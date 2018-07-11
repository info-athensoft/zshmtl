<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>
<c:set var="img_path" value="/img"/>

<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>
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
	<title>About us - Overview | ZSHMTL</title>

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
				<h1><spring:message code="aboutus-overview-pagetitle"/></h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html?lang=${loc}"><spring:message code="menu-home"/></a></li>
					<li class="breadcrumb-item"><a href="/aboutus-overview.html?lang=${loc}"><spring:message code="menu-aboutus"/></a></li>
					<li class="breadcrumb-item active" aria-current="page"><spring:message code="menu-aboutus-overview"/></li>
				</ol>
			</div>

		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		<section id="content">
			<div class="container clearfix">
				
			<div class="content-wrap">
				
				<div class="container clearfix">

					<div class="col_two_fifth topmargin1 nobottommargin" style="min-height: 350px;">
						 <!-- <img src="http://via.placeholder.com/450x450" alt="zsh">  -->
						
						<img src="${img_path}/aboutus/overview-1.jpg" alt="zsh">
					</div>

					<div class="col_three_fifth nobottommargin col_last">

						<div class="heading-block">
							<h3><spring:message code="aboutus-overview-1-title"/></h3>
							<span></span>
						</div>
						<p><spring:message code="aboutus-overview-1-content-1"/></p>
						<p><spring:message code="aboutus-overview-1-content-2"/></p>
						<p><spring:message code="aboutus-overview-1-content-3"/></p>
					</div>

					<div class="clear"></div><div class="line"></div>
					
					<div class="col_three_fifth nobottommargin">

						<div class="heading-block">
							<h3><spring:message code="aboutus-overview-2-title"/></h3>
							<span></span>
						</div>
						<p><spring:message code="aboutus-overview-2-content-1"/></p>
						<p><spring:message code="aboutus-overview-2-content-2"/></p>
						<p><spring:message code="aboutus-overview-2-content-3"/></p>
					</div>

					<div class="col_two_fifth topmargin1 nobottommargin col_last" style="min-height: 350px">
						<img src="${img_path}/aboutus/overview-2.jpg" alt="zsh">
					</div>
					
					<div class="clear"></div><div class="line"></div>
					
					<div class="col_two_fifth topmargin1 nobottommargin" style="min-height: 250px;">
						<img src="${img_path}/aboutus/overview-3.jpg" alt="zsh">
					</div>
					
					<div class="col_three_fifth nobottommargin col_last">
						<div class="heading-block">
							<h3><spring:message code="aboutus-overview-3-title"/></h3>
							<span></span>
						</div>

						<p><spring:message code="aboutus-overview-3-content-1"/></p>

					</div>
					
					<div class="clear"></div><div class="line"></div>
					
					<div class="col_three_fifth nobottommargin col_last">

						<div class="heading-block">
							<h3><spring:message code="aboutus-overview-4-title"/></h3>
							<span></span>
						</div>

						<p><spring:message code="aboutus-overview-4-content-1"/></p>
						<p><spring:message code="aboutus-overview-4-content-2"/></p>
						<p><spring:message code="aboutus-overview-4-content-3"/></p>
						<p><spring:message code="aboutus-overview-4-content-4"/></p>
					</div>
					
					<div class="col_two_fifth topmargin1 col_last" style="min-height: 350px">
						<img src="${img_path}/aboutus/overview-4.jpg" alt="zsh">
					</div>
				</div>
				<div class="clear"></div>
				
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