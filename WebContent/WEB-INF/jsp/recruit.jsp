<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>


<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>
<!-- ENDS page variables -->

<c:set var="job_title_1" value="职位名称 1"/>
<c:set var="job_desc_1" value="职位描述 1"/>

<c:set var="job_title_2" value="职位名称 2"/>
<c:set var="job_desc_2" value="职位描述 2"/>

<c:set var="job_title_3" value="职位名称 3"/>
<c:set var="job_desc_3" value="职位描述 3"/>

<c:set var="header_job_resp" value="岗位职责"/>
<c:set var="header_job_req" value="所需技能和要求"/>
<c:set var="header_job_note" value="其它说明"/>

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
				<h1>诚招义工</h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html">Home</a></li>
					<li class="breadcrumb-item"><a href="/contactus.html">Contact us</a></li>
					<li class="breadcrumb-item active" aria-current="page">Recruit</li>
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
							<h3>${job_title_1}</h3>
						</div>

						<p>${job_desc_1}  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, natus voluptatibus adipisci porro magni dolore eos eius ducimus corporis quos perspiciatis quis iste, vitae autem libero ullam omnis cupiditate quam.</p>

						<div class="accordion accordion-bg clearfix">

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_resp}</div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-ok"></i>B.Tech./ B.E / MCA degree in Computer Science, Engineering or a related stream.</li>
									<li><i class="icon-ok"></i>3+ years of software development experience.</li>
									<li><i class="icon-ok"></i>3+ years of Python / Java development projects experience.</li>
									<li><i class="icon-ok"></i>Good Communication Skills</li>
									<li><i class="icon-ok"></i>Team Player</li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_req}</div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-plus-sign"></i>Design and build applications/ components using open source technology.</li>
									<li><i class="icon-plus-sign"></i>Taking complete ownership of the deliveries assigned.</li>
									<li><i class="icon-plus-sign"></i>Collaborate with cross-functional teams to define, design, and ship new features.</li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_note}</div>
							<div class="acc_content clearfix">You'll be familiar with agile practices and have a highly technical background, comfortable discussing detailed technical aspects of system design and implementation, whilst remaining business driven. With 5+ years of systems analysis, technical analysis or business analysis experience, you'll have an expansive toolkit of communication techniques to enable shared, deep understanding of financial and technical concepts by diverse stakeholders with varying backgrounds and needs. In addition, you will have exposure to financial systems or accounting knowledge.</div>

						</div>

						<a href="#" data-scrollto="#job-apply" class="button button-3d button-black nomargin">Apply Now</a>

						<div class="divider divider-short"><i class="icon-star3"></i></div>

						<div class="fancy-title title-bottom-border">
							<h3>${job_title_2}</h3>
						</div>

						<p>${job_desc_2}  Repudiandae quasi perspiciatis ea placeat nobis asperiores quod fuga ipsa facere enim ipsum expedita debitis, sit quia adipisci deserunt vitae hic obcaecati voluptates rerum nihil.</p>

						<div class="accordion accordion-bg clearfix">

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_resp}</div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-ok"></i>B.Tech./ B.E / MCA degree in Computer Science, Engineering or a related stream.</li>
									<li><i class="icon-ok"></i>3+ years of software development experience.</li>
									<li><i class="icon-ok"></i>3+ years of Python / Java development projects experience.</li>
									<li><i class="icon-ok"></i>Minimum of 4 live project roll outs.</li>
									<li><i class="icon-ok"></i>Experience with third-party libraries and APIs.</li>
									<li><i class="icon-ok"></i>In depth understanding and experience  of either SDLC or PDLC.</li>
									<li><i class="icon-ok"></i>Good Communication Skills</li>
									<li><i class="icon-ok"></i>Team Player</li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_req}</div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-plus-sign"></i>Design and build applications/ components using open source technology.</li>
									<li><i class="icon-plus-sign"></i>Taking complete ownership of the deliveries assigned.</li>
									<li><i class="icon-plus-sign"></i>Collaborate with cross-functional teams to define, design, and ship new features.</li>
									<li><i class="icon-plus-sign"></i>Work with outside data sources and API's.</li>
									<li><i class="icon-plus-sign"></i>Unit-test code for robustness, including edge cases, usability, and general reliability.</li>
									<li><i class="icon-plus-sign"></i>Work on bug fixing and improving application performance.</li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_note}</div>
							<div class="acc_content clearfix">You'll be familiar with agile practices and have a highly technical background, comfortable discussing detailed technical aspects of system design and implementation, whilst remaining business driven. With 5+ years of systems analysis, technical analysis or business analysis experience, you'll have an expansive toolkit of communication techniques to enable shared, deep understanding of financial and technical concepts by diverse stakeholders with varying backgrounds and needs. In addition, you will have exposure to financial systems or accounting knowledge.</div>

						</div>

						<a href="#" data-scrollto="#job-apply" class="button button-3d button-black nomargin">Apply Now</a>

						<div class="divider divider-short"><i class="icon-star3"></i></div>

						<div class="fancy-title title-bottom-border">
							<h3>${job_title_3}</h3>
						</div>

						<p>${job_desc_3}Repudiandae quasi perspiciatis ea placeat nobis asperiores quod fuga ipsa facere enim ipsum expedita debitis, sit quia adipisci deserunt vitae hic obcaecati voluptates rerum nihil.</p>

						<div class="accordion accordion-bg clearfix">

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_resp}</div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-ok"></i>B.Tech./ B.E / MCA degree in Computer Science, Engineering or a related stream.</li>
									<li><i class="icon-ok"></i>3+ years of software development experience.</li>
									<li><i class="icon-ok"></i>3+ years of Python / Java development projects experience.</li>
									<li><i class="icon-ok"></i>Minimum of 4 live project roll outs.</li>
									<li><i class="icon-ok"></i>Experience with third-party libraries and APIs.</li>
									<li><i class="icon-ok"></i>In depth understanding and experience  of either SDLC or PDLC.</li>
									<li><i class="icon-ok"></i>Good Communication Skills</li>
									<li><i class="icon-ok"></i>Team Player</li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_req}</div>
							<div class="acc_content clearfix">
								<ul class="iconlist iconlist-color nobottommargin">
									<li><i class="icon-plus-sign"></i>Design and build applications/ components using open source technology.</li>
									<li><i class="icon-plus-sign"></i>Taking complete ownership of the deliveries assigned.</li>
									<li><i class="icon-plus-sign"></i>Collaborate with cross-functional teams to define, design, and ship new features.</li>
									<li><i class="icon-plus-sign"></i>Work with outside data sources and API's.</li>
									<li><i class="icon-plus-sign"></i>Unit-test code for robustness, including edge cases, usability, and general reliability.</li>
									<li><i class="icon-plus-sign"></i>Work on bug fixing and improving application performance.</li>
								</ul>
							</div>

							<div class="acctitle"><i class="acc-closed icon-ok-circle"></i><i class="acc-open icon-remove-circle"></i>${header_job_note}</div>
							<div class="acc_content clearfix">You'll be familiar with agile practices and have a highly technical background, comfortable discussing detailed technical aspects of system design and implementation, whilst remaining business driven. With 5+ years of systems analysis, technical analysis or business analysis experience, you'll have an expansive toolkit of communication techniques to enable shared, deep understanding of financial and technical concepts by diverse stakeholders with varying backgrounds and needs. In addition, you will have exposure to financial systems or accounting knowledge.</div>

						</div>

						<a href="#" data-scrollto="#job-apply" class="button button-3d button-black nomargin">Apply Now</a>

					</div>

					<div class="col_two_fifth nobottommargin col_last">

						<div id="job-apply" class="heading-block highlight-me">
							<h2>Apply Now</h2>
							<span>And we'll get back to you within 48 hours.</span>
						</div>

						<div class="contact-widget">

							<div class="contact-form-result"></div>

							<form action="include/jobs.php" id="template-jobform" name="template-jobform" method="post" role="form">

								<div class="form-process"></div>

								<div class="col_half">
									<label for="template-jobform-fname">First Name <small>*</small></label>
									<input type="text" id="template-jobform-fname" name="template-jobform-fname" value="" class="sm-form-control required" />
								</div>

								<div class="col_half col_last">
									<label for="template-jobform-lname">Last Name <small>*</small></label>
									<input type="text" id="template-jobform-lname" name="template-jobform-lname" value="" class="sm-form-control required" />
								</div>

								<div class="clear"></div>

								<div class="col_full">
									<label for="template-jobform-email">Email <small>*</small></label>
									<input type="email" id="template-jobform-email" name="template-jobform-email" value="" class="required email sm-form-control" />
								</div>

								<div class="col_half">
									<label for="template-jobform-age">Age <small>*</small></label>
									<input type="text" name="template-jobform-age" id="template-jobform-age" value="" size="22" tabindex="4" class="sm-form-control required" />
								</div>

								<div class="col_half col_last">
									<label for="template-jobform-city">City <small>*</small></label>
									<input type="text" name="template-jobform-city" id="template-jobform-city" value="" size="22" tabindex="5" class="sm-form-control required" />
								</div>

								<div class="clear"></div>

								<div class="col_full">
									<label for="template-jobform-service">Position <small>*</small></label>
									<select name="template-jobform-position" id="template-jobform-position"  tabindex="9" class="sm-form-control required">
										<option value="">-- Select Position --</option>
										<option value="Senior Python Developer">Senior Python Developer</option>
										<option value="Design Analyst">Design Analyst</option>
										<option value="Head of UX and Design">Head of UX and Design</option>
										<option value="Web &amp; Visual Designer (Marketing)">Web &amp; Visual Designer (Marketing)</option>
									</select>
								</div>

								<div class="col_half">
									<label for="template-jobform-salary">Expected Salary</label>
									<input type="text" name="template-jobform-salary" id="template-jobform-salary" value="" size="22" tabindex="6" class="sm-form-control" />
								</div>

								<div class="col_half col_last">
									<label for="template-jobform-time">Start Date</label>
									<input type="text" name="template-jobform-start" id="template-jobform-start" value="" size="22" tabindex="7" class="sm-form-control" />
								</div>

								<div class="clear"></div>

								<div class="col_full">
									<label for="template-jobform-website">Website (if any)</label>
									<input type="text" name="template-jobform-website" id="template-jobform-website" value="" size="22" tabindex="8" class="sm-form-control" />
								</div>

								<div class="col_full">
									<label for="template-jobform-experience">Experience (optional)</label>
									<textarea name="template-jobform-experience" id="template-jobform-experience" rows="3" tabindex="10" class="sm-form-control"></textarea>
								</div>

								<div class="col_full">
									<label for="template-jobform-application">Application <small>*</small></label>
									<textarea name="template-jobform-application" id="template-jobform-application" rows="6" tabindex="11" class="sm-form-control required"></textarea>
								</div>

								<div class="col_full hidden">
									<input type="text" id="template-jobform-botcheck" name="template-jobform-botcheck" value="" class="sm-form-control" />
								</div>

								<div class="col_full">
									<button class="button button-3d button-large btn-block nomargin" name="template-jobform-apply" type="submit" value="apply">Send Application</button>
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
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

</body>
</html>