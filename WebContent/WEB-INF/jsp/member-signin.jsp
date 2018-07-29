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
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113930092-3"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-113930092-3');
	</script>

	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
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
				<h1><spring:message code="member-signin-pagetitle"/></h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html?lang=${loc}"><spring:message code="menu-home"/></a></li>
					<li class="breadcrumb-item"><a href="/contactus.html?lang=${loc}"><spring:message code="menu-contactus"/></a></li>
					<li class="breadcrumb-item active" aria-current="page"><spring:message code="menu-contactus-login"/></li>
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
							<h3><spring:message code="member-signin-form-title-1"/></h3>
							<span></span>
						</div>
						 
						 
						<form id="register-form" name="signupForm" class="nobottommargin" action="" method="post">
							
								<div class="col_full">
									<label for="register-form-chinese-name"><spring:message code="member-signin-form-username"/>:</label>
									<input type="text" id="login-form-username" name="acctName" class="form-control" placeholder='<spring:message code="member-signin-form-username-placeholder"/>'/>
								</div>
			
								<div class="col_full">
									<label for="register-form-english-name"><spring:message code="member-signin-form-password"/>:</label>
									<input type="password" id="login-form-password" name="password" class="form-control" />
								</div>

							<!-- <div class="clear"></div> -->
							
								<div class="col_full nobottommargin">
									<button class="button button-3d button-black nomargin" type="submit" id="register-form-submit" name="register-form-submit"  onclick="member_login()"><spring:message code="member-signin-form-btn-signin"/></button>
									<a href="/member-signup.html?lang=${loc}" class="fright"><spring:message code="member-signin-option-apply"/></a>
									<span class="fright">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
									<a href="/request-resetpassword.html?lang=${loc}" class="fright"><spring:message code="member-signin-option-forgetpassword"/></a>
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
	/*
		$(document).ready(function(){
			
		});*/
		
		function member_login(){
			var userName = $("#login-form-username").val();
			var password = $("#login-form-password").val();
			//alert("login as:"+userName+","+password);
			
			var lang = "${loc}";
			
			var businessObject = {
					userName:userName,
					password:password
			};
			
			var param = JSON.stringify(businessObject)
			
			//param = encodeURI(param);  //tomcat 8.5
			//alert(param);
			
			$.ajax({
		        type    	:   "post",
		     	url     	: 	"/login",
		     	contentType	:	"application/json;charset=UTF-8",		//avoid HTTP 415 error
		     	data		:	param,
		        dataType	:   "json",
		        timeout 	:   10000,
		        
		        success:function(msg){
		        	//alert("success");
		            location.href="/member-index.html?lang="+lang+"&u="+userName;
		        },
		        error:function(data){
		            //alert("ERROR: ajax failed.");
		            alert("提示: 请重新尝试");
		            if(data.responseText=='loseSession'){
	                    //session  
	                }
		        },            
		        complete: function(XMLHttpRequest, textStatus){
		            //reset to avoid duplication
		        }
		    });
		}
		
	</script>
</body>
</html>