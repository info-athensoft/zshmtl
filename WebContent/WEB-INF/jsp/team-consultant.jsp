<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>


<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>
<c:set var="consultant_img_dir" value="/img/team/consultant"/>
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
	<title>Team - Consultant | ZSHMTL</title>

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
				<h1><spring:message code="team-consultant-pagetitle"/></h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html?lang=${loc}"><spring:message code="menu-home"/></a></li>
					<li class="breadcrumb-item"><a href="/team-consultant.html?lang=${loc}"><spring:message code="menu-team"/></a></li>
					<li class="breadcrumb-item active" aria-current="page"><spring:message code="menu-team-consultant"/></li>
				</ol>
			</div>

		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		<section id="content">
			<div class="container clearfix">
				
			<div class="content-wrap">
				<div class="fancy-title title-border" style="text-align:center;">
					<h3><spring:message code="team-consultant-title-1"/></h3>
				</div>
				
				<div class="row">
				<div class="col_one_third">

				</div>

				<div class="col_one_third">

					<div class="team">
						<div class="team-image">
							<img src="${consultant_img_dir}/huzixiu.jpg" alt="huzixiu">
						</div>
						<div class="team-desc">
							<div class="team-title"><h4><spring:message code="team-consultant-1-name"/><br/><spring:message code="team-consultant-1-title"/></h4><span><spring:message code="team-consultant-1-position"/></span></div>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-gplus">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>
						</div>
					</div>

				</div>

				<div class="col_one_third col_last1">
				</div>
				
				</div><!-- end of row -->
				<div class="clear"></div>
				
			
				<div class="fancy-title title-border" style="text-align:center;">
					<h3><spring:message code="team-consultant-title-2"/></h3>
				</div>
				
				<div class="row">
				
				<div class="col-lg-3 col-md-6 bottommargin">

					<div class="team">
						<div class="team-image">
							<img src="${consultant_img_dir}/luopan.jpg" alt="luopan">
						</div>
						<div class="team-desc">
							<div class="team-title"><h4><spring:message code="team-consultant-2-name"/><br/><spring:message code="team-consultant-2-title"/></h4><span><spring:message code="team-consultant-2-position"/></span></div>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-gplus">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>
						</div>
					</div>

				</div>

				<div class="col-lg-3 col-md-6 bottommargin">

					<div class="team">
						<div class="team-image">
							<img src="${consultant_img_dir}/yuning.jpg" alt="Mary Jane">
						</div>
						<div class="team-desc">
							<div class="team-title"><h4><spring:message code="team-consultant-4-name"/><br/><spring:message code="team-consultant-4-title"/></h4><span><spring:message code="team-consultant-4-position"/></span></div>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-gplus">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>
						</div>
					</div>

				</div>
				
				<div class="col-lg-3 col-md-6 bottommargin">

					<div class="team">
						<div class="team-image">
							<img src="${consultant_img_dir}/linyanping.jpg" alt="linyanping">
						</div>
						<div class="team-desc">
							<div class="team-title"><h4><spring:message code="team-consultant-3-name"/><br/><spring:message code="team-consultant-3-title"/></h4><span><spring:message code="team-consultant-3-position"/></span></div>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-gplus">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>
						</div>
					</div>

				</div>

				<div class="col-lg-3 col-md-6 bottommargin">

					<div class="team">
						<div class="team-image">
							<img src="${consultant_img_dir}/hanxudong.jpg" alt="hanxudong">
						</div>
						<div class="team-desc">
							<div class="team-title"><h4><spring:message code="team-consultant-5-name"/><br/><spring:message code="team-consultant-5-title"/></h4><span><spring:message code="team-consultant-5-position"/></span></div>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>
							<a href="#" class="social-icon inline-block si-small si-light si-rounded si-gplus">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>
						</div>
					</div>

				</div>
				</div> <!-- end of row -->
				
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
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

</body>
</html>