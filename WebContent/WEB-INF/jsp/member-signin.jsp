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
				<h1>会员登录</h1>
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
							<h3>会员登录</h3>
							<span></span>
						</div>
						 
						 
						<form id="register-form" name="signupForm" class="nobottommargin" action="" method="post">
							
								<div class="col_full">
									<label for="register-form-chinese-name">用户名:</label>
									<input type="text" id="login-form-username" name="acctName" class="form-control" placeholder="邮箱登录"/>
								</div>
			
								<div class="col_full">
									<label for="register-form-english-name">密码:</label>
									<input type="text" id="login-form-password" name="password" class="form-control" />
								</div>

							<!-- <div class="clear"></div> -->
							
								<div class="col_full nobottommargin">
									<button class="button button-3d button-black nomargin" type="submit" id="register-form-submit" name="register-form-submit"  onclick="member_login()">登录</button>
									<a href="/request-resetpassword.html" class="fright">Forgot Password?</a>
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
		$(document).ready(function(){
			
		});
		
		function member_login(){
			var userName = $("#login-form-username").val();
			var password = $("#login-form-password").val();
			//alert("login as:"+userName+","+password);
			
			var businessObject = {
					userName:userName,
					password:password
			};
			
			var param = JSON.stringify(businessObject)
			
			//param = encodeURI(param);  //tomcat 8.5
			//alert(param);
			
			$.ajax({
		        type    	:   "post",
		       //url:"/newsComment?itemJSONString="+JSON.stringify(businessObject),
		     	url     	: 	"/login",
		     	contentType	:	"application/json;charset=UTF-8",		//avoid HTTP 415 error
		     	data		:	param,
		        dataType	:   "json",
		        timeout 	:   10000,
		        
		        
		        success:function(msg){
		        	//alert("success");
		            location.href="/member-index.html?u="+userName;
		        },
		        error:function(data){
		            alert("ERROR: ajax failed.");
		            if(data.responseText=='loseSession'){
	                    //session失效时的处理  
	                }
		        },            
		        complete: function(XMLHttpRequest, textStatus){
		            //reset to avoid duplication
		        }
		    });
		}
		
	
		function member_apply(){
			var chinese_name = $("#register-form-chinese-name").val();
			var english_name = $("#register-form-english-name").val();
			var gender = $("#register-form-gender").val();
			var nationality = $("#register-form-nationality").val();
			var telephone = $("#register-form-telephone").val();
			var cellphone = $("#register-form-cellphone").val();
			var wechat = $("#register-form-wechat").val();
			var email = $("#register-form-email").val();
			var degree = $("#register-form-degree").val();
			var occupation = $("#register-form-occupation").val();
			var dob = $("#register-form-dob").val();
			var pob = $("#register-form-pob").val();
			var home_address = $("#register-form-home-address").val();
			var postal_code = $("#register-form-postal-code").val();
			var specialty = $("#register-form-specialty").val();
			var member_type = $("input[name='memberLevel']:checked").val();
			var agree_terms = $("input[name='agree_terms']:checked").val();
			
			
			if(member_type==undefined){
				member_type = "not selected";
			}
			
			if(agree_terms==undefined){
				agree_terms = "not selected";
			}
			
			alert("member_apply_form: \n"
					+chinese_name+",\n"
					+english_name+",\n"
					+gender+",\n"
					+nationality+",\n"
					+telephone+",\n"
					+cellphone+",\n"
					+wechat+",\n"
					+email+",\n"
					+degree+",\n"
					+occupation+",\n"
					+dob+",\n"
					+pob+",\n"
					+home_address+",\n"
					+postal_code+",\n"
					+specialty+",\n"
					+member_type+",\n"
					+agree_terms+",\n"
					);
		}
		
		
	</script>
</body>
</html>