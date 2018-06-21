<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>


<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>
<!-- ENDS page variables -->

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
				<h1>会员申请</h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html">Home</a></li>
					<li class="breadcrumb-item"><a href="/contactus.html">Contact us</a></li>
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
					<div class="col_two_third  nobottommargin">
						
						<!-- text content -->
						<div class="fancy-title" style="text-align:center;">
							<h3>欢迎加入蒙特利尔华人职商会</h3>
							<br/><br/>
							<span>入会要求</span>
						</div>
						
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div>
									<p>
									认同并支持本会章程。<br/>
									支持本会各项工作并积极参与本会组织的各项活动。<br/>
									以团体利益高于个人利益为前提，同本会其他会员积极互助，抱团成长。
									</p>
									<p>
										蒙特利尔华人职商会章程（关于会员的节选）&nbsp;&nbsp;<a href="#member_charter">查看</a><br/>
										蒙特利尔华人职商会 会员申请表 &nbsp;&nbsp;&nbsp;&nbsp;<a href="#member_form">查看</a>
									</p>
								</div>
							</div>
						</div>
						
						<div class="divider">&nbsp;&nbsp;</div>
						
						<!-- Form -->
						<div class="fancy-title" style="text-align:center;">
							<h3>蒙特利尔华人职商会&nbsp;&nbsp;会员申请表</h3>
							<br/><br/>
							<span></span>
						</div>

						

						<form id="register-form" name="signupForm" class="nobottommargin" action="/support/mailToUsSignup" method="get">
	
							<div class="form-process"></div>
	
							<div class="divider">
							<span>登录账号</span>
							</div>

							<div class="col_half">
								<label for="acctName"><span><strong>(*)</strong></span> 账号名&nbsp;&nbsp;&nbsp;&nbsp;User Name:</label>
								<input type="text" id="acctName" name="acctName" class="form-control" />
							</div>
							
							<div class="col_half col_last">
								<label>&nbsp;&nbsp;&nbsp;&nbsp;</label><br/>
								请使用有效邮箱地址作为登录账号
							</div>
							
							<div class="col_half">
								<label for="password1"><span><strong>(*)</strong></span> 密码&nbsp;&nbsp;&nbsp;&nbsp;User Password:</label>
								<input type="text" id="password1" name="password1" class="form-control" />
							</div>
							
							<div class="col_half col_last">
								<label>&nbsp;&nbsp;&nbsp;&nbsp;</label><br/>
								6位以上字符数字
							</div>
							
							<div class="col_half">
								<label for="password2"><span><strong>(*)</strong></span> 再次输入密码&nbsp;&nbsp;&nbsp;&nbsp;User Password Again:</label>
								<input type="text" id="password2" name="password2" class="form-control" />
							</div>
							
							<div class="col_half col_last">
								<label>&nbsp;&nbsp;&nbsp;&nbsp;</label><br/>
								6位以上字符数字
							</div>
							
							
							<div class="divider">
							<span>会员信息</span>
							</div>

							<div class="col_half">
								<label for="register-form-chinese-name"><span><strong>(*)</strong></span> 中文姓名&nbsp;&nbsp;&nbsp;&nbsp;Chinese Name:</label>
								<input type="text" id="register-form-chinese-name" name="name1" class="form-control" value=""/>
							</div>
							
							<div class="col_half col_last">
								<label for="register-form-english-name"><span><strong>(*)</strong></span> 英文姓名&nbsp;&nbsp;&nbsp;&nbsp;English Name:</label>
								<input type="text" id="register-form-english-name" name="name2" class="form-control" />
							</div>
							
							<div class="col_half">
								<label for="register-form-gender"><span><strong>(*)</strong></span> 性别&nbsp;&nbsp;&nbsp;&nbsp;Gender:</label>
								<select id="template-contactform-service" name="gender" class="sm-form-control">
										<option value="">-- 请选择 --</option>
										<option value="1">男</option>
										<option value="2">女</option>
										<option value="3">保密</option>
									</select>
							</div>
							
							<div class="col_half col_last">
								<label for="register-form-nationality"><span><strong>(*)</strong></span> 国籍&nbsp;&nbsp;&nbsp;&nbsp;Nationality:</label>
								<input type="text" id="register-form-nationality" name="nationality" class="form-control" />
							</div>
							
							<div class="col_half">
								<label for="register-form-telephone"><span><strong>(*)</strong></span> 电话&nbsp;&nbsp;&nbsp;&nbsp;Telephone:</label>
								<input type="text" id="register-form-telephone" name="phone1" class="form-control" />
							</div>
							
							<div class="col_half col_last">
								<label for="register-form-cellphone"><span><strong>(*)</strong></span> 手机&nbsp;&nbsp;&nbsp;&nbsp;Cell phone:</label>
								<input type="text" id="register-form-cellphone" name="phone2" class="form-control" />
							</div>
							
							<div class="col_half">
								<label for="register-form-wechat"><span><strong>(*)</strong></span> 微信号&nbsp;&nbsp;&nbsp;&nbsp;Wechat ID:</label>
								<input type="text" id="register-form-wechat" name="wechat" class="form-control" />
							</div>

							<div class="col_half col_last">
								<label for="register-form-email"><span><strong>(*)</strong></span> 电子邮箱&nbsp;&nbsp;&nbsp;&nbsp;Email Address:</label>
								<input type="text" id="register-form-email" name="email" class="form-control" />
							</div>
							
							<div class="col_half">
								<label for="register-form-degree"><span><strong>(*)</strong></span> 最高学历&nbsp;&nbsp;&nbsp;&nbsp;Highest education:</label>
								<input type="text" id="register-form-degree" name="degree" class="form-control" />
							</div>

							<div class="col_half col_last">
								<label for="register-form-occupation"><span><strong>(*)</strong></span> 目前职业&nbsp;&nbsp;&nbsp;&nbsp;Occupation:</label>
								<input type="text" id="register-form-occupation" name="occupation" class="form-control" />
							</div>

							<div class="clear"></div>

							<div class="col_half">
								<label for="register-form-dob">出生日期&nbsp;&nbsp;&nbsp;&nbsp;Date of Birth:</label>
								<input type="text" id="register-form-dob" name="dob" class="form-control" placeholder="yyyy/mm/dd"/>
							</div>
						
							<div class="col_one_fourth">
								<label for="register-form-pob">出生地(市)&nbsp;&nbsp;&nbsp;&nbsp;POB:</label>
								<input type="text" id="register-form-pob-city" name="pobCity" class="form-control" />
							</div>
							
							<div class="col_one_fourth col_last">
								<label for="register-form-pob">(省)&nbsp;</label>
								<input type="text" id="register-form-pob-province" name="pobProvince" class="form-control" />
							</div>
							
							
							<div class="col_half">
								<label for="register-form-home-address">家庭地址&nbsp;&nbsp;&nbsp;&nbsp;Address:</label>
								<input type="text" id="register-form-home-address" name="homeAddress" value="" class="form-control" />
							</div>

							<div class="col_half col_last">
								<label for="register-form-postal-code">邮编&nbsp;&nbsp;&nbsp;&nbsp;Postal Code:</label>
								<input type="text" id="register-form-postal-code" name="postalcode" value="" class="form-control" />
							</div>

							<!-- <div class="clear"></div> -->

							<div class="col_full">
								<label for="register-form-specialty">有何特长爱好:</label>
								<input type="text" id="register-form-specialty" name="hobbies" value="" class="form-control" />
							</div>

							<div class="clear"></div>
							
							<div class="col_full">
								<label for="register-form-fee-name">入会费</label>
								<div>
									<input id="radio-7" class="radio-style" name="memberLevel" type="radio" value="3">
									<label for="register-form-fee-vipmember" class="radio-style-2-label">VIP会员$500</label>
								</div>
								<div>
									<input id="radio-8" class="radio-style" name="memberLevel" type="radio" value="2">
									<label for="register-form-fee-member" class="radio-style-2-label">普通会员$100</label>
								</div>
							</div>
							
							<div class="col_full">
								<div>
									<input id="checkbox-4" class="checkbox-style" name="agree_terms" type="checkbox" value="1">
									<label for="checkbox-4" class="checkbox-style-1-label">本人已阅读、理解并同意蒙特利尔华人职商会章程的会员条款。</label>
								</div>

							</div>

							<div class="clear" id="member_charter"></div>

							<div class="col_full nobottommargin">
								<button class="button button-3d button-black nomargin" type="submit" id="register-form-submit" name="register-form-submit">创建账号并申请会员</button>
								<button class="button button-3d button-black nomargin" id="register-form-submit" name="test" onclick="member_apply();">提交测试</button>
							</div>

						</form>
						<!-- end of form -->
						
						<div class="divider">&nbsp;&nbsp;</div>
						
						<!-- section 2 -->
						<div class="fancy-title" style="text-align:center;">
							<h3>${charter_title_1}</h3>
							<br/><br/>
							<span>${charter_title_2}</span>
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
									<!-- <button class="button button-3d nomargin" id="login-form-submit" name="login-form-submit" value="login" onclick="member_login();">Login</button>  -->
									<a href="javascript:void(0);" class="button button-3d nomargin" id="login-form-submit" onclick="member_login()">登录</a>
									<a href="#" class="fright">Forgot Password?</a>
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