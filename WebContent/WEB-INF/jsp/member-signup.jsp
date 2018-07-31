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

<c:set var="charter_title_1" value="蒙特利尔华人职商会章程"/>
<c:set var="charter_title_2" value="摘选"/>

<c:set var="charter_header_3" value="第三条 宗旨"/>
<c:set var="charter_article_3_1" value="传承前辈优良传统及宝贵经验，为华人专业人士和商家共同发展提供一个务实、专业、互助的服务平台，努力提升华人在加国主流社会的影响。"/>

<c:set var="charter_header_4" value="第四条 目标"/>
<c:set var="charter_article_4_1" value="（一）促进本地华人商家、专业人士与主流社会及其它族裔的交流、互助，争取共同发展；"/>
<c:set var="charter_article_4_2" value="（二）支持接触的华裔专业人士参政议政；"/>
<c:set var="charter_article_4_3" value="（三）为华人商家、专业人士提供服务，谋求及维护会员的应有权益；"/>
<c:set var="charter_article_4_4" value="（四）为华人移民落地后从事专业工作、经商提供相关的信息及协助，帮助他们在加国安居乐业、顺利发展。"/>

<c:set var="charter_header_8" value="第八条	入会条件"/>
<c:set var="charter_article_8_1" value="（一）认同并支持本会章程；"/>
<c:set var="charter_article_8_2" value="（二）支持本会各项工作并积极参与本会组织的各项活动；"/>
<c:set var="charter_article_8_3" value="（三）以团体利益高于个人利益为前提同本会其它会员积极互助，抱团成长；"/>
<c:set var="charter_article_8_4" value="（四）个人、企业会员以年计费，支行会保留指定并调整年费的权利；"/>
<c:set var="charter_article_8_5" value="（五）会员的期限为一年。到期可以申请延长会员资格。"/>

<c:set var="charter_header_9" value="第九条	入会程序"/>
<c:set var="charter_article_9_1" value="（一）提交入会申请书及相关证明"/>
<c:set var="charter_article_9_2" value="（二）经理事会审议通过颁发会员证"/>

<c:set var="charter_header_10" value="第十条	会员权利"/>
<c:set var="charter_article_10_1" value="（一）优先、免费或优惠享有职商会提供、介绍、推荐的各项服务的权利"/>
<c:set var="charter_article_10_2" value="（二）优先、免费或优惠享有参加职商会组织的各项活动的权利"/>

<c:set var="charter_header_11" value="第十一条  会员义务"/>
<c:set var="charter_article_11_1" value="（一）自学遵守职商会的章程和各项规定，维护职商会的形象和名誉；"/>
<c:set var="charter_article_11_2" value="（二）支持职商会理事会的工作；"/>
<c:set var="charter_article_11_3" value="（三）支持和积极参加职商会的各项活动，充分发挥职商会额互助精神；"/>
<c:set var="charter_article_11_4" value="（四）为职商会发展献计献策；"/>
<c:set var="charter_article_11_5" value="（五）按时缴纳会费，过时未缴并经提醒一个月之内尚未缴费者自动丧失会员资格。"/>

<c:set var="charter_header_12" value="第十二条  "/>
<c:set var="charter_article_12_1" value="会员若有严重违反本章程、违法或破坏本会形象、声誉的言行，经理事会表决通过，予以除名。"/>

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
	<title>Membership - Sign up | ZSHMTL</title>

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
				<h1><spring:message code="member-signup-pagetitle"/></h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html?lang=${loc}"><spring:message code="menu-home"/></a></li>
					<li class="breadcrumb-item"><a href="/contactus.html?lang=${loc}"><spring:message code="menu-contactus"/></a></li>
					<li class="breadcrumb-item active" aria-current="page"><spring:message code="menu-contactus-apply"/></li>
				</ol>
			</div>

		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">
					<!-- start of 2/3 column on the left-->
					<div class="col_two_third  nobottommargin">
						
						<!-- text content -->
						<div class="fancy-title" style="text-align:center;">
							<h3><spring:message code="member-signup-requirement-title-1"/></h3>
							<br/><br/>
							<span><spring:message code="member-signup-requirement-title-2"/></span>
						</div>
						
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div>
									<p>
									<spring:message code="member-signup-requirement-item-1"/><br/>
									<spring:message code="member-signup-requirement-item-2"/><br/>
									<spring:message code="member-signup-requirement-item-3"/>
									</p>
									<p>
										<spring:message code="member-signup-requirement-item-4"/>&nbsp;&nbsp;
										<a href="#member_charter"><spring:message code="member-signup-requirement-option-view"/></a><br/>
										<spring:message code="member-signup-requirement-item-5"/> &nbsp;&nbsp;&nbsp;&nbsp;
										<a href="#member_form"><spring:message code="member-signup-requirement-option-view"/></a>
									</p>
								</div>
							</div>
						</div>
						
						<div class="divider">&nbsp;&nbsp;</div>
						
						<!-- Form -->
						<div class="fancy-title" style="text-align:center;">
							<h3><spring:message code="member-signup-form-title-1"/></h3>
							<br/><br/>
							<span></span>
						</div>

						<form id="register-form" name="signupForm" class="nobottommargin" action="/support/mailToUsSignup11111111" method="get">
	
							<div class="form-process"></div>
	
							<div class="divider">
							<span><spring:message code="member-signup-form-group-account"/></span>
							</div>

							<div class="col_half">
								<label for="acctName"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-acctname"/></label>
								<input type="text" id="acctName" name="acctName" class="form-control" />
							</div>
							
							<div class="col_half col_last">
								<label>&nbsp;&nbsp;&nbsp;&nbsp;</label><br/>
								<spring:message code="member-signup-form-acctname-hint"/>
							</div>
							
							<div class="col_half">
								<label for="password1"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-pwd"/></label>
								<input type="password" id="password1" name="password1" class="form-control" />
							</div>
							
							<div class="col_half col_last">
								<label>&nbsp;&nbsp;&nbsp;&nbsp;</label><br/>
								<spring:message code="member-signup-form-pwd-hint"/>
							</div>
							
							<div class="col_half">
								<label for="password2"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-pwd2"/></label>
								<input type="password" id="password2" name="password2" class="form-control" />
							</div>
							
							<div class="col_half col_last">
								<label>&nbsp;&nbsp;&nbsp;&nbsp;</label><br/>
								<spring:message code="member-signup-form-pwd2-hint"/>
							</div>
							
							
							<div class="divider">
							<span><spring:message code="member-signup-form-group-profile"/></span>
							</div>

							<div class="col_half">
								<label for="register-form-chinese-name"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-chinesename"/></label>
								<input type="text" id="register-form-chinese-name" name="name1" class="form-control" value=""/>
							</div>
							
							<div class="col_half col_last">
								<label for="register-form-english-name"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-othername"/></label>
								<input type="text" id="register-form-english-name" name="name2" class="form-control" />
							</div>
							
							<div class="col_half">
								<label for="register-form-gender"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-gender"/></label>
								<select id="register-form-gender" name="gender" class="sm-form-control">
										<option value=""><spring:message code="member-signup-form-select-default"/></option>
										<option value="1"><spring:message code="member-signup-form-gender-option-1"/></option>
										<option value="2"><spring:message code="member-signup-form-gender-option-2"/></option>
										<option value="3"><spring:message code="member-signup-form-gender-option-3"/></option>
									</select>
							</div>
							
							<div class="col_half col_last">
								<label for="register-form-nationality"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-nationality"/></label>
								<input type="text" id="register-form-nationality" name="nationality" class="form-control" />
							</div>
							
							<div class="col_half">
								<label for="register-form-telephone"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-telephone"/></label>
								<input type="text" id="register-form-telephone" name="phone1" class="form-control" />
							</div>
							
							<div class="col_half col_last">
								<label for="register-form-cellphone"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-cellphone"/></label>
								<input type="text" id="register-form-cellphone" name="phone2" class="form-control" />
							</div>
							
							<div class="col_half">
								<label for="register-form-wechat"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-wechat"/></label>
								<input type="text" id="register-form-wechat" name="wechat" class="form-control" />
							</div>

							<div class="col_half col_last">
								<label for="register-form-email"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-email"/></label>
								<input type="text" id="register-form-email" name="email" class="form-control" />
							</div>
							
							<div class="col_half">
								<label for="register-form-degree"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-education"/></label>
								<input type="text" id="register-form-degree" name="degree" class="form-control" />
							</div>

							<div class="col_half col_last">
								<label for="register-form-occupation"><span><strong>(*)</strong></span> <spring:message code="member-signup-form-occupation"/></label>
								<input type="text" id="register-form-occupation" name="occupation" class="form-control" />
							</div>

							<div class="clear"></div>

							<div class="col_half">
								<label for="register-form-dob"><spring:message code="member-signup-form-dob"/></label>
								<input type="text" id="register-form-dob" name="dob" class="form-control" placeholder="yyyy/mm/dd"/>
							</div>
						
							<div class="col_one_fourth">
								<label for="register-form-pob"><spring:message code="member-signup-form-dop_city"/></label>
								<input type="text" id="register-form-pob-city" name="pobCity" class="form-control" />
							</div>
							
							<div class="col_one_fourth col_last">
								<label for="register-form-pob"><spring:message code="member-signup-form-dop_province"/></label>
								<input type="text" id="register-form-pob-province" name="pobProvince" class="form-control" />
							</div>
							
							
							<div class="col_half">
								<label for="register-form-home-address"><spring:message code="member-signup-form-home_addr"/></label>
								<input type="text" id="register-form-home-address" name="homeAddress" value="" class="form-control" />
							</div>

							<div class="col_half col_last">
								<label for="register-form-postal-code"><spring:message code="member-signup-form-postal_code"/></label>
								<input type="text" id="register-form-postal-code" name="postalcode" value="" class="form-control" />
							</div>

							<!-- <div class="clear"></div> -->

							<div class="col_full">
								<label for="register-form-specialty"><spring:message code="member-signup-form-hobby"/></label>
								<input type="text" id="register-form-specialty" name="hobbies" value="" class="form-control" />
							</div>

							<div class="clear"></div>
							
							<div class="col_full">
								<label for="register-form-fee-name"><spring:message code="member-signup-form-admissioin_fee"/></label>
								<div>
									<input id="radio-7" class="radio-style" name="memberLevel" type="radio" value="3">
									<label for="register-form-fee-vipmember" class="radio-style-2-label"><spring:message code="member-signup-form-member_level_vip"/></label>
								</div>
								<div>
									<input id="radio-8" class="radio-style" name="memberLevel" type="radio" value="2" checked="checked">
									<label for="register-form-fee-member" class="radio-style-2-label"><spring:message code="member-signup-form-member_level_general"/></label>
								</div>
							</div>
							
							<div class="col_full">
								<div>
									<input id="checkbox-4" class="checkbox-style" name="agree_terms" type="checkbox" value="1">
									<label for="checkbox-4" class="checkbox-style-1-label"><spring:message code="member-signup-form-agree_terms"/></label>
								</div>
							</div>

							<div class="clear" id="member_charter"></div>

							<div class="col_full nobottommargin">
								<!-- <button class="button button-3d button-black nomargin" type="submit" id="register-form-submit" name="register-form-submit"><spring:message code="member-signup-form-btn-submit"/></button>  -->
								<!--  <a href="javascript:void(0);" class="button button-3d button-black nomargin" id="register-form-submit" onclick="member_apply()"><spring:message code="member-signup-form-btn-submit"/></a> -->
								<!--  production code google recaptcha -->
								<a href="javascript:void(0);" class="button button-3d button-black nomargin" id="register-form-submit"><spring:message code="member-signup-form-btn-submit"/></a>
							</div>

						</form>
						<!-- end of form -->
						
						<div class="divider">&nbsp;&nbsp;</div>
						
						<!-- section 2 -->
						<div class="fancy-title" style="text-align:center;">
							<h3><spring:message code="member-signup-article-title-1"/></h3>
							<br/><br/>
							<span><spring:message code="member-signup-article-title-2"/></span>
						</div>
						
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div>
									<h4>${charter_header_3}</h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${charter_article_3_1}"/></p>
									<p></p>
									<h4>${charter_header_4}</h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_4_1}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_4_2}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_4_3}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_4_4}</p>
									<p></p>
									<h4>${charter_header_8}</h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_8_1}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_8_2}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_8_3}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_8_4}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_8_5}</p>
									<p></p>
									<h4>${charter_header_9}</h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_9_1}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_9_2}</p>
									<p></p>
									<h4>${charter_header_10}</h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_10_1}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_10_2}</p>
									<p></p>
									<h4>${charter_header_11}</h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_11_1}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_11_2}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_11_3}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_11_4}<br/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_11_5}</p>
									<p></p>
									<h4>${charter_header_12}</h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${charter_article_12_1}</p>
								</div>
							</div>
						</div>
						<!-- end of text content -->
						
					</div>
					<!-- end of 2/3 column -->
					
					<!-- start of 1/3 column on the right-->
					 
					<div class="col_one_third col_last nobottommargin">
						
						<!-- 
						<div class="well well-lg nobottommargin">
							<form id="login-form" name="login-form" class="nobottommargin" action="#" method="post">

								<h3>会员登录</h3>

								<div class="col_full">
									<label for="login-form-username">用户名:</label>
									<input type="text" id="login-form-username" name="login-form-username" value="" class="form-control" />
								</div>

								<div class="col_full">
									<label for="login-form-password">密码:</label>
									<input type="password" id="login-form-password" name="login-form-password" value="" class="form-control" />
								</div>

								<div class="col_full nobottommargin">
									<a href="javascript:void(0);" class="button button-3d nomargin" id="login-form-submit" onclick="member_login()">登录</a>
									<a href="#" class="fright">Forgot Password?</a>
								</div>

							</form>
						</div> -->
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
		//校验密码：只能输入6-20个字母、数字、下划线  
		function isPassword(s)  
		{  
		var patrn=/^(\w){6,20}$/;  
		if (!patrn.exec(s)) return false
		return true
		}
		
		function member_apply(){
			
			var acctName = $("#acctName").val();
			var password1 = $("#password1").val();
			var password2 = $("#password2").val();
			
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
			var pob_city = $("#register-form-pob-city").val();
			var pob_province = $("#register-form-pob-province").val();
			var home_address = $("#register-form-home-address").val();
			var postal_code = $("#register-form-postal-code").val();
			var specialty = $("#register-form-specialty").val();
			var member_type = $("input[name='memberLevel']:checked").val();
			var agree_terms = $("input[name='agree_terms']:checked").val();
			
			
			//validation
			var reg_email = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			if(!reg_email.test(acctName))
			{
				alert('请输入有效的邮箱地址作为用户登录账户');
				//myreg.focus();
				return false;
			}
			
			//password			
			if(!(isPassword(password1)&&isPassword(password2))){  
				alert('密码必须由 6-16位字母、数字组成'); 
				return false; 
			}
			if(password1!=password2){
				alert('两次输入密码不相同，请重新输入');
				return false;
			}
			
			if(gender==undefined || gender==""){
				alert("请选择性别");
				return false;
			}
			
			if(member_type==undefined){
				member_type = 2;	//general member
				alert("请选择会员类型");
				return false;
			}
			
			if(agree_terms==undefined){
				agree_terms = 0;	//not checked
				alert("请仔细阅读条款和章程");
				return false;
			}
			
			/*
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
					+pob_city+",\n"
					+pob_province+",\n"
					+home_address+",\n"
					+postal_code+",\n"
					+specialty+",\n"
					+member_type+",\n"
					+agree_terms+",\n"
					); */
			
			//execute creating account and send mail
			var businessObject = {
					acctName:acctName,
					password1:password1,
					password2:password2,
					
					name1:chinese_name,			//Chinese name
			  		name2:english_name,			//English name
					gender:gender,
				 	nationality:nationality,
				 	phone1:telephone,			//telephone
				 	phone2:cellphone,			//cellphone
				 	wechat:wechat,
				 	email:email,
				 	degree:degree,
				 	occupation:occupation,
				 	dob:dob,
				 	pobProvince:pob_province,
				 	pobCity:pob_city,
				 	homeAddress:home_address,
				 	postalcode:postal_code,
			 		hobbies:specialty,
			 		memberLevel:member_type
			};
			
			var param = JSON.stringify(businessObject)
			
			//param = encodeURI(param);  //tomcat 8.5
			//alert(param);
			
			$.ajax({
		        type    	:   "post",
		     	url     	: 	"/support/mailToUsSignup",
		     	//headers: {
		//	                Accept: "application/xml",
	       				//	 Accept: "application/json",
	    		//},
		     	contentType	:	"application/json;charset=UTF-8",		//avoid HTTP 415 error
		     	data		:	param,
		        //dataType	:   "json",			//if enabled this, ajax will be failed.
		        timeout 	:   10000,
		        
		        success:function(msg){
		        	//alert("success");
		            //location.href="/member-index.html?u="+acctName;
		            location.href="/login.html";
		        },
		        error:function(data){
		            alert("ERROR: ajax failed.");
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
	
	<!-- google reCAPTCHA -->
	<script>
	function recaptchaCallback(){
		//alert("verified");
		$("#register-form-submit").attr("onclick","member_apply();");
	}
	</script>
</body>
</html>