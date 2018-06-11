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
	<title>Membership - Sign in | ZSHMTL</title>

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
				<h1>找回密码</h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html">首页</a></li>
					<li class="breadcrumb-item"><a href="#">Contact us</a></li>
					<li class="breadcrumb-item active" aria-current="page">Membership</li>
				</ol>
			</div>

		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">
					<!-- start of 2/3 column on the left-->
					
					<div class="col_one_third nobottommargin">
						&nbsp;
					</div>
					
					<div class="col_one_third  nobottommargin">
						
						<!-- text content -->
						
						<!-- Form -->
						
						<div class="fancy-title" style="text-align:center;">
							<h3>重置密码</h3>
							<span></span>
						</div>
						 
						 
						<form id="register-form" name="signupForm" class="nobottommargin" action="" method="post">
							
								<div class="col_full">
									<label for="register-form-chinese-name">请填写登录邮箱:</label>
									<input type="text" id="login-form-username" name="acctName" class="form-control" placeholder="即账号名"/>
								</div>
			
							<!-- <div class="clear"></div> -->
							
								<div class="col_full nobottommargin">
									<a href="javascript:void(0);" class="button button-3d button-black nomargin" id="register-form-submit" name="register-form-submit"  onclick="request_resetpassword()">申请重置</a>
								</div> 
							

						</form>
						<!-- end of form -->
						
						<!-- <div class="divider">&nbsp;&nbsp;</div> -->
						
						
						
					</div>
					<!-- end of 2/3 column -->
					
					<!-- start of 1/3 column on the right-->
					<div class="col_one_third col_last nobottommargin">
						&nbsp;
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
	
	<!-- Local script -->
	<script>
				
		function request_resetpassword(){
			//alert("request_resetpassword() = /valid-resetpassword.html");
			
			location.href="/valid-resetpassword.html";
		}
		
		
		
		
	</script>
</body>
</html>