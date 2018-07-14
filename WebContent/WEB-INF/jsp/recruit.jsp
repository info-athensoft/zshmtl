<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>


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
	<title>Contact us - Recruit | ZSHMTL</title>

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
				<h1><spring:message code="recruit-pagetitle"/></h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html?lang=${loc}"><spring:message code="menu-home"/></a></li>
					<li class="breadcrumb-item"><a href="/contactus.html?lang=${loc}"><spring:message code="menu-contactus"/></a></li>
					<li class="breadcrumb-item active" aria-current="page"><spring:message code="menu-contactus-recruit"/></li>
				</ol>
			</div>
		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">
					<div class="col_three_fifth nobottommargin">
						
						<div class="fancy-title title-bottom-border">
							<h3><spring:message code="recruit-position-1-job_title"/></h3>
						</div>

						<p><spring:message code="recruit-position-1-job_desc"/></p>

						<div class="accordion accordion-bg clearfix">

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_resp"/></div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-ok"></i><spring:message code="recruit-position-1-item-job_resp-1"/></li>
									<li><i class="icon-ok"></i><spring:message code="recruit-position-1-item-job_resp-2"/></li>
									<li><i class="icon-ok"></i><spring:message code="recruit-position-1-item-job_resp-3"/></li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_req"/></div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-1-item-job_req-1"/></li>
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-1-item-job_req-2"/></li>
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-1-item-job_req-3"/></li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_note"/></div>
							<div class="acc_content clearfix"><spring:message code="recruit-position-1-item-job_note-1"/></div>

						</div>

						<a href="#" data-scrollto="#job-apply" class="button button-3d button-black nomargin"><spring:message code="recruit-position-link-apply"/></a>

						
						
						<div class="divider divider-short"><i class="icon-star3"></i></div>

						
						
						<div class="fancy-title title-bottom-border">
							<h3><spring:message code="recruit-position-2-job_title"/></h3>
						</div>

						<p><spring:message code="recruit-position-2-job_desc"/></p>

						<div class="accordion accordion-bg clearfix">

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_resp"/></div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-ok"></i><spring:message code="recruit-position-2-item-job_resp-1"/></li>
									<li><i class="icon-ok"></i><spring:message code="recruit-position-2-item-job_resp-2"/></li>
									<li><i class="icon-ok"></i><spring:message code="recruit-position-2-item-job_resp-3"/></li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_req"/></div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-2-item-job_req-1"/></li>
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-2-item-job_req-2"/></li>
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-2-item-job_req-3"/></li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_note"/></div>
							<div class="acc_content clearfix"><spring:message code="recruit-position-1-item-job_note-1"/></div>

						</div>

						<a href="#" data-scrollto="#job-apply" class="button button-3d button-black nomargin"><spring:message code="recruit-position-link-apply"/></a>



						<div class="divider divider-short"><i class="icon-star3"></i></div>



						<div class="fancy-title title-bottom-border">
							<h3><spring:message code="recruit-position-3-job_title"/></h3>
						</div>

						<p><spring:message code="recruit-position-3-job_desc"/></p>

						<div class="accordion accordion-bg clearfix">

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_resp"/></div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-ok"></i><spring:message code="recruit-position-3-item-job_resp-1"/></li>
									<li><i class="icon-ok"></i><spring:message code="recruit-position-3-item-job_resp-2"/></li>
									<li><i class="icon-ok"></i><spring:message code="recruit-position-3-item-job_resp-3"/></li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_req"/></div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-3-item-job_req-1"/></li>
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-3-item-job_req-2"/></li>
									<li><i class="icon-plus-sign"></i><spring:message code="recruit-position-3-item-job_req-3"/></li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i><spring:message code="recruit-position-header-job_note"/></div>
							<div class="acc_content clearfix"><spring:message code="recruit-position-3-item-job_note-1"/></div>

						</div>

						<a href="#" data-scrollto="#job-apply" class="button button-3d button-black nomargin"><spring:message code="recruit-position-link-apply"/></a>

					</div>

					<div class="col_two_fifth nobottommargin col_last">

						<div id="job-apply" class="heading-block highlight-me">
							<h2><spring:message code="recruit-form-title-1"/></h2>
							<span><spring:message code="recruit-form-title-2"/></span>
						</div>

						<div class="contact-widget">

							<div class="contact-form-result"></div>

							<form id="template-jobform" name="jobForm" action="/support/mailToUsJob" method="get" role="form">

								<div class="form-process"></div>

								<div class="col_half">
									<label for="template-jobform-fname"><spring:message code="recruit-form-firstname"/> <small>*</small></label>
									<input type="text" id="template-jobform-fname" name="firstName" value="" class="sm-form-control required" />
								</div>

								<div class="col_half col_last">
									<label for="template-jobform-lname"><spring:message code="recruit-form-lastname"/> <small>*</small></label>
									<input type="text" id="template-jobform-lname" name="lastName" value="" class="sm-form-control required" />
								</div>

								<div class="clear"></div>

								<div class="col_full">
									<label for="template-jobform-email"><spring:message code="recruit-form-email"/><small>*</small></label>
									<input type="email" id="template-jobform-email" name="email" value="" class="required email sm-form-control" />
								</div>
								
								<div class="col_full">
									<label for="template-jobform-phone"><spring:message code="recruit-form-phone"/><small>*</small></label>
									<input type="text" id="template-jobform-phone" name="phone" value="" class="required sm-form-control" />
								</div>

								<div class="col_half">
									<label for="template-jobform-city"><spring:message code="recruit-form-city"/> <small>*</small></label>
									<input type="text" name="template-jobform-city" id="city" value="" size="22" tabindex="5" class="sm-form-control required" />
								</div>
								
								<div class="col_half col_last">
									<label for="template-jobform-province"><spring:message code="recruit-form-province"/> <small>*</small></label>
									<input type="text" name="template-jobform-province" id="province" value="" size="22" tabindex="4" class="sm-form-control" />
								</div>

								<div class="clear"></div>

								<div class="col_full">
									<label for="template-jobform-service"><spring:message code="recruit-form-job_title"/><small>*</small></label>
									<select name="jobName" id="template-jobform-position"  tabindex="9" class="sm-form-control required">
										<option value=""><spring:message code="recruit-form-select-default"/></option>
										<option value='<spring:message code="recruit-form-job_title-option-1"/>'><spring:message code="recruit-form-job_title-option-1"/></option>
										<option value='<spring:message code="recruit-form-job_title-option-2"/>'><spring:message code="recruit-form-job_title-option-2"/></option>
										<option value='<spring:message code="recruit-form-job_title-option-3"/>'><spring:message code="recruit-form-job_title-option-3"/></option>
									</select>
								</div>
								<!-- 
								<div class="col_half">
									<label for="template-jobform-salary">Expected Salary</label>
									<input type="text" name="template-jobform-salary" id="template-jobform-salary" value="" size="22" tabindex="6" class="sm-form-control" />
								</div> -->

								<div class="col_full">
									<label for="template-jobform-time"><spring:message code="recruit-form-startdate"/></label>
									<input type="text" id="template-jobform-start" name="expectedStartDate" value="" size="22" tabindex="7" class="sm-form-control" />
								</div>

								<div class="clear"></div>

								<div class="col_full">
									<label for="template-jobform-website"><spring:message code="recruit-form-homepage"/></label>
									<input type="text" name="website" id="template-jobform-website" value="" size="22" tabindex="8" class="sm-form-control" />
								</div>

								<div class="col_full">
									<label for="template-jobform-experience"><spring:message code="recruit-form-experience"/></label>
									<textarea name="experience" id="template-jobform-experience" rows="3" tabindex="10" class="sm-form-control"></textarea>
								</div>

								<div class="col_full">
									<label for="template-jobform-application"><spring:message code="recruit-form-application"/> <small>*</small></label>
									<textarea name="application" id="template-jobform-application" rows="6" tabindex="11" class="sm-form-control required"></textarea>
								</div>

								<div class="col_full hidden">
									<input type="text" id="template-jobform-botcheck" name="template-jobform-botcheck" value="" class="sm-form-control" />
								</div>

								<div class="col_full">
									<button class="button button-3d button-large btn-block nomargin" name="template-jobform-apply" type="submit" value="apply"><spring:message code="recruit-form-btn-submit"/></button>
								</div>

							</form>

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