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
	<title>Membership - Profile | ZSHMTL</title>

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
				<h1><spring:message code="member-profile-pagetitle"/></h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html?lang=${loc}"><spring:message code="menu-home"/></a></li>
					<li class="breadcrumb-item"><a href="/contactus.html?lang=${loc}"><spring:message code="menu-contactus"/></a></li>
					<li class="breadcrumb-item active" aria-current="page"><spring:message code="menu-contactus-membercenter"/></li>
				</ol>
			</div>

		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="row clearfix">

						<div class="col-md-9">

							<img src="/images/icons/avatar.jpg" class="alignleft img-circle img-thumbnail notopmargin nobottommargin" alt="Avatar" style="max-width: 84px;">

							<div class="heading-block noborder">
								<h3>${memberProfile.name1} &nbsp;&nbsp; ${memberProfile.name2}</h3>
								<span>${sessionScope.userAccount.acctName}</span>
							</div>

							<div class="clear"></div>

							<div class="row clearfix">

								<div class="col-lg-12">

									<div class="tabs tabs-alt clearfix" id="tabs-profile">

										<ul class="tab-nav clearfix">
											<li><a href="#tab-profile"><i class="icon-rss2"></i> <spring:message code="member-profile-section-my_profile-title"/></a></li>
											<!-- <li><a href="#tab-posts"><i class="icon-pencil2"></i> My Posts</a></li>  -->
											<li><a href="#tab-replies"><i class="icon-reply"></i> <spring:message code="member-profile-section-my_comment-title"/></a></li>
											<li><a href="#tab-connections"><i class="icon-users"></i> <spring:message code="member-profile-section-my_ads-title"/></a></li>
											<!-- <li><a href="#tab-records"><i class="icon-users"></i> 历史记录</a></li>  -->
										</ul>

										<div class="tab-container">

											<div class="tab-content clearfix" id="tab-profile">
												<div>
													<form id="register-form" name="register-form" class="nobottommargin" action="#" method="post">

														<div class="col_half">
															<label for="register-form-chinese-name"><span><strong>(*)</strong></span> 中文姓名&nbsp;&nbsp;&nbsp;&nbsp;Chinese Name:</label>
															<input type="text" id="register-form-chinese-name" name="register-form-chinese-name" class="form-control" value="${memberProfile.name1}"/>
														</div>
														
														<div class="col_half col_last">
															<label for="register-form-english-name"><span><strong>(*)</strong></span> 英文姓名&nbsp;&nbsp;&nbsp;&nbsp;English Name:</label>
															<input type="text" id="register-form-english-name" name="register-form-english-name" class="form-control" value="${memberProfile.name2}"/>
														</div>
														
														<div class="col_half">
															<label for="register-form-gender"><span><strong>(*)</strong></span> 性别&nbsp;&nbsp;&nbsp;&nbsp;Gender:</label>
															<!-- <input type="text" id="register-form-gender" name="register-form-gender" class="form-control" value="${memberProfile.gender}"/> -->
															<select id="register-form-gender" name="register-form-gender" class="sm-form-control">
																<option value=""><spring:message code="member-signup-form-select-default"/></option>
																<option value="1" ${memberProfile.gender == '1' ? 'selected' : ''}><spring:message code="member-signup-form-gender-option-1"/></option>
																<option value="2" ${memberProfile.gender == '2' ? 'selected' : ''}><spring:message code="member-signup-form-gender-option-2"/></option>
																<option value="3" ${memberProfile.gender == '3' ? 'selected' : ''}><spring:message code="member-signup-form-gender-option-3"/></option>
															</select>
														</div>
														
														<div class="col_half col_last">
															<label for="register-form-nationality"><span><strong>(*)</strong></span> 国籍&nbsp;&nbsp;&nbsp;&nbsp;Nationality:</label>
															<input type="text" id="register-form-nationality" name="register-form-nationality" class="form-control" value="${memberProfile.nationality}"/>
														</div>
														
														<div class="col_half">
															<label for="register-form-telephone"><span><strong>(*)</strong></span> 电话&nbsp;&nbsp;&nbsp;&nbsp;Telephone:</label>
															<input type="text" id="register-form-telephone" name="register-form-telephone" class="form-control" value="${memberProfile.phone1}"/>
														</div>
														
														<div class="col_half col_last">
															<label for="register-form-cellphone"><span><strong>(*)</strong></span> 手机&nbsp;&nbsp;&nbsp;&nbsp;Cell phone:</label>
															<input type="text" id="register-form-cellphone" name="register-form-cellphone" class="form-control" value="${memberProfile.phone2}"/>
														</div>
														
														<div class="col_half">
															<label for="register-form-wechat"><span><strong>(*)</strong></span> 微信号&nbsp;&nbsp;&nbsp;&nbsp;Wechat ID:</label>
															<input type="text" id="register-form-wechat" name="register-form-wechat" class="form-control" value="${memberProfile.wechat}"/>
														</div>
							
														<div class="col_half col_last">
															<label for="register-form-email"><span><strong>(*)</strong></span> 电子邮箱&nbsp;&nbsp;&nbsp;&nbsp;Email Address:</label>
															<input type="text" id="register-form-email" name="register-form-email" class="form-control" value="${memberProfile.email}"/>
														</div>
														
														<div class="col_half">
															<label for="register-form-degree"><span><strong>(*)</strong></span> 最高学历&nbsp;&nbsp;&nbsp;&nbsp;Highest education:</label>
															<input type="text" id="register-form-degree" name="register-form-degree" class="form-control" value="${memberProfile.degree}"/>
														</div>
							
														<div class="col_half col_last">
															<label for="register-form-occupation"><span><strong>(*)</strong></span> 目前职业&nbsp;&nbsp;&nbsp;&nbsp;Occupation:</label>
															<input type="text" id="register-form-occupation" name="register-form-occupation" class="form-control" value="${memberProfile.occupation}"/>
														</div>
							
														<div class="clear"></div>
							
														<div class="col_half">
															<label for="register-form-dob">出生日期&nbsp;&nbsp;&nbsp;&nbsp;Date of Birth:</label>
															<input type="text" id="register-form-dob" name="register-form-dob" class="form-control" value="${memberProfile.dob}">
														</div>
							
														<div class="col_one_fourth">
															<label for="register-form-pob">出生地&nbsp;&nbsp;&nbsp;&nbsp;Place of Birth:</label>
															<input type="text" id="register-form-pob" name="register-form-pob" class="form-control" value="${memberProfile.pobCity}"/>
														</div>
														
														<div class="col_one_fourth col_last">
															<label for="register-form-pob">&nbsp;</label>
															<input type="text" id="register-form-pob" name="register-form-pob" class="form-control" value="${memberProfile.pobProvince}"/>
														</div>
														
														
														<div class="col_half">
															<label for="register-form-home-address">家庭地址&nbsp;&nbsp;&nbsp;&nbsp;Address:</label>
															<input type="text" id="register-form-home-address" name="register-form-home-address" class="form-control" value="${memberProfile.homeAddress}"/>
														</div>
							
														<div class="col_half col_last">
															<label for="register-form-postal-code">邮编&nbsp;&nbsp;&nbsp;&nbsp;Postal Code:</label>
															<input type="text" id="register-form-postal-code" name="register-form-postal-code" class="form-control" value="${memberProfile.postalcode}"/>
														</div>
							
														<div class="col_full">
															<label for="register-form-specialty">有何特长爱好:</label>
															<input type="text" id="register-form-specialty" name="register-form-specialty" class="form-control" value="${memberProfile.hobbies}" />
														</div>
							
														<div class="clear"></div>
														
														<div class="clear" id="member_charter"></div>
														
														<!-- 
														<div class="col_full nobottommargin">
															<button class="button button-3d button-black nomargin" id="register-form-submit" name="register-form-submit" value="register" onclick="member_apply();">提交</button>
														</div>
														 -->
													</form>
													
												</div>
												
											</div>
											
											
											<!-- my post -->
											<!--  
											<div class="tab-content clearfix" id="tab-posts">

												<div class="row topmargin-sm clearfix">

													<div class="col-12 bottommargin-sm">
														<div class="ipost clearfix">
															<div class="row clearfix">
																<div class="col-md-4">
																	<div class="entry-image">
																		<a href="/images/portfolio/full/17.jpg" data-lightbox="image"><img class="image_fade" src="images/blog/grid/17.jpg" alt="Standard Post with Image"></a>
																	</div>
																</div>
																<div class="col-md-8">
																	<div class="entry-title">
																		<h3><a href="blog-single.html">This is a Standard post with a Preview Image</a></h3>
																	</div>
																	<ul class="entry-meta clearfix">
																		<li><i class="icon-calendar3"></i> 10th Feb 2014</li>
																		<li><a href="blog-single.html#comments"><i class="icon-comments"></i> 13</a></li>
																		<li><a href="#"><i class="icon-camera-retro"></i></a></li>
																	</ul>
																	<div class="entry-content">
																		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, asperiores quod est tenetur in.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="col-12 bottommargin-sm">
														<div class="ipost clearfix">
															<div class="row clearfix">
																<div class="col-md-4">
																	<div class="entry-image">
																		<iframe src="http://player.vimeo.com/video/87701971" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
																	</div>
																</div>
																<div class="col-md-8">
																	<div class="entry-title">
																		<h3><a href="blog-single.html">This is a Standard post with a Embed Video</a></h3>
																	</div>
																	<ul class="entry-meta clearfix">
																		<li><i class="icon-calendar3"></i> 10th Feb 2014</li>
																		<li><a href="blog-single.html#comments"><i class="icon-comments"></i> 13</a></li>
																		<li><a href="#"><i class="icon-camera-retro"></i></a></li>
																	</ul>
																	<div class="entry-content">
																		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, asperiores quod est tenetur in.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="col-12 bottommargin-sm">
														<div class="ipost clearfix">
															<div class="row clearfix">
																<div class="col-md-4">
																	<div class="entry-image">
																		<div class="fslider" data-arrows="false">
																			<div class="flexslider">
																				<div class="slider-wrap">
																					<div class="slide"><img class="image_fade" src="/images/blog/grid/10.jpg" alt="Standard Post with Gallery"></div>
																					<div class="slide"><img class="image_fade" src="/images/blog/grid/20.jpg" alt="Standard Post with Gallery"></div>
																					<div class="slide"><img class="image_fade" src="/images/blog/grid/21.jpg" alt="Standard Post with Gallery"></div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-md-8">
																	<div class="entry-title">
																		<h3><a href="blog-single.html">This is a Standard post with a Slider Gallery</a></h3>
																	</div>
																	<ul class="entry-meta clearfix">
																		<li><i class="icon-calendar3"></i> 10th Feb 2014</li>
																		<li><a href="blog-single.html#comments"><i class="icon-comments"></i> 13</a></li>
																		<li><a href="#"><i class="icon-camera-retro"></i></a></li>
																	</ul>
																	<div class="entry-content">
																		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, asperiores quod est tenetur in.</p>
																	</div>
																</div>
															</div>
														</div>
													</div>

												</div>

											</div>
											-->
											
											<div class="tab-content clearfix" id="tab-replies">

												<div class="clear topmargin-sm"></div>
												<ol class="commentlist noborder nomargin nopadding clearfix">
												
													<c:forEach var="eventReview" items="${eventReviewList}">
														<li class="comment even thread-even depth-1" id="li-comment-1">
															<div id="comment-1" class="comment-wrap clearfix">
																<div class="comment-meta">
																	<div class="comment-author vcard">
																		<span class="comment-avatar clearfix">
																		<img alt='' src='http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60' class='avatar avatar-60 photo avatar-default' height='60' width='60' /></span>
																	</div>
																</div>
																<div class="comment-content clearfix">
																	<div class="comment-author">${eventReview.eventUUID}<span><a href="#" title="Permalink to this comment">${eventReview.reviewDatetime}</a></span></div>
																	<p>${eventReview.reviewContent}</p>
																	<a class='comment-reply-link' href='#'><i class="icon-reply"></i></a>
																</div>
																<div class="clear"></div>
															</div>
														</li>
													</c:forEach>
												</ol>

											</div>
											<div class="tab-content clearfix" id="tab-connections">
												
												<div id="portfolio1" class="team-image grid-container1 clearfix">
													
													<c:forEach var="adPost" items="${adPostList}">
														<div class="row">
														<article class="portfolio-item pf-media pf-icons">
															<div class="portfolio-image">
																<a href="#">
																	<img src="${adPost.adImage}" alt="">
																</a>
																<div class="portfolio-overlay">
																	<a href="${adPost.adImage}" class="left-icon" data-lightbox="image" title="IMage"><i class="icon-line-plus"></i></a>
																	<a href="/ad-list.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>
																</div>
															</div>
															<div class="portfolio-desc ad-text-height">
																<h3><a href="#">${adPost.adTitle}</a></h3>
																<span>${adPost.adText}</span>
																<!-- <span><a href="#">Media</a>, <a href="#">Icons</a></span>  -->
															</div>
														</article>
														</div>
													</c:forEach>
												</div>
												
												<div class="row topmargin-sm">
													<!-- 
													<div class="col-lg-3 col-md-6">

														<div class="team">
															<div class="team-image">
																<img src="/images/team/4.jpg" alt="Nix Maxwell">
															</div>
															<div class="team-desc">
																<div class="team-title"><h4>Nix Maxwell</h4><span>Support</span></div>
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
													</div>-->
												</div>

											</div>
											
											<!-- history -->
											<!-- 
											<div class="tab-content clearfix" id="tab-records">
												<div>
													<table class="table table-bordered table-striped">
												  <thead>
													<tr>
													  <th>Time</th>
													  <th>Activity</th>
													</tr>
												  </thead>
												  <tbody>
													<tr>
													  <td>
														<code>5/23/2016</code>
													  </td>
													  <td>Payment for VPS2 completed</td>
													</tr>
													<tr>
													  <td>
														<code>5/23/2016</code>
													  </td>
													  <td>Logged in to the Account at 16:33:01</td>
													</tr>
													<tr>
													  <td>
														<code>5/22/2016</code>
													  </td>
													  <td>Logged in to the Account at 09:41:58</td>
													</tr>
													<tr>
													  <td>
														<code>5/21/2016</code>
													  </td>
													  <td>Logged in to the Account at 17:16:32</td>
													</tr>
													<tr>
													  <td>
														<code>5/18/2016</code>
													  </td>
													  <td>Logged in to the Account at 22:53:41</td>
													</tr>
												  </tbody>
												</table>
												</div>
											</div>-->

										</div>

									</div>

								</div>

							</div>

						</div>

						<div class="w-100 line d-block d-md-none"></div>

						<div class="col-md-3 clearfix">

							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action clearfix"><spring:message code="member-profile-sidebar-menu-profile"/> <i class="icon-user float-right"></i></a>
								<!-- 
								<a href="#" class="list-group-item list-group-item-action clearfix">Servers <i class="icon-laptop2 float-right"></i></a>
								<a href="#" class="list-group-item list-group-item-action clearfix">Messages <i class="icon-envelope2 float-right"></i></a>
								<a href="#" class="list-group-item list-group-item-action clearfix">Billing <i class="icon-credit-cards float-right"></i></a>
								<a href="#" class="list-group-item list-group-item-action clearfix">Settings <i class="icon-cog float-right"></i></a>
								 -->
								<a href="/logout" class="list-group-item list-group-item-action clearfix"><spring:message code="member-profile-sidebar-menu-logout"/> <i class="icon-line2-logout float-right"></i></a>
							</div>

							<div class="fancy-title topmargin title-border">
								<h4>账号信息</h4>
							</div>
							
							<p>
								<strong>会员等级:</strong>&nbsp;&nbsp;
								<c:choose>
							        <c:when test="${memberProfile.memberLevel == 1}">
							        	<span class="">临时访客</span></c:when>
							        <c:when test="${memberProfile.memberLevel == 2}">
							        	<span class="">普通会员</span></c:when>
							        <c:when test="${memberProfile.memberLevel == 3}">
							        	<span class="">VIP会员</span></c:when>
							        <c:when test="${memberProfile.memberLevel == 4}">
							        	<span class="">核心会员</span></c:when>
							        <c:otherwise>未知类型</c:otherwise>
							    </c:choose>
							    <br/>
								
								<strong>当前状态:</strong>&nbsp;&nbsp;
								<c:choose>
							        <c:when test="${memberProfile.memberStatus == 1}">
							        	<span class="badge badge-secondary badge-info">已申请</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 2}">
							        	<span class="badge badge-secondary badge-info">预审通过</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 3}">
							        	<span class="badge badge-secondary badge-success">已激活</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 4}">
							        	<span class="badge badge-secondary badge-warning">未激活</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 5}">
							        	<span class="badge badge-secondary badge-danger">审查中</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 6}">
							        	<span class="badge badge-secondary badge-dark">被禁止</span></c:when>
							        <c:otherwise>UNKNOWN</c:otherwise>
							    </c:choose>
							    
								
								<c:choose>
								    <c:when test="${empty(memberProfile)}">
								        Member Profile does not exist!
								        <br />
								    </c:when>    
								    <c:otherwise>
									    <!-- ${memberProfile.acctName} --><br/>
										<!-- <strong>Member Code:</strong>&nbsp;${memberProfile.memberCode}<br/>
										<strong>Member Id:</strong>&nbsp;${memberProfile.memberId}<br/> -->
										<strong>申请提交日:</strong>&nbsp;&nbsp;<fmt:formatDate type="date" pattern="yyyy-MM-dd" value="${memberProfile.memberApplyDate}"/><br/>
										
										<c:choose>
										   	<c:when test="${not empty(memberProfile.memberApprovedDate)}">
										   		<strong>预审通过日 :</strong>&nbsp;&nbsp;<fmt:formatDate type="date" pattern="yyyy-MM-dd" value="${memberProfile.memberApprovedDate}"/><br/>
											</c:when> 
										   	<c:otherwise>
										   		<strong>预审通过日 :</strong>&nbsp;&nbsp;处理中<br/>
											</c:otherwise>    
										</c:choose>
										
										<c:choose>
										   	<c:when test="${not empty(memberProfile.memberActiveDate)}">
										   		<strong>会员激活日 :</strong>&nbsp;&nbsp;<fmt:formatDate type="date" pattern="yyyy-MM-dd" value="${memberProfile.memberActiveDate}"/><br/>
											</c:when> 
										   	<c:otherwise>
										   		<strong>会员激活日 :</strong>&nbsp;&nbsp;未知<br/>
											</c:otherwise>    
										</c:choose>
										
										<c:choose>
										   	<c:when test="${not empty(memberProfile.memberInactiveDate)}">
										   		<strong>会员到期日 :</strong>&nbsp;&nbsp;<fmt:formatDate type="date" pattern="yyyy-MM-dd" value="${memberProfile.memberInactiveDate}"/><br/>
											</c:when> 
										   	<c:otherwise>
										   		<strong>会员到期日 :</strong>&nbsp;&nbsp;未知
											</c:otherwise>    
										</c:choose>
										
								    </c:otherwise>
								</c:choose>
							</p>

							<div class="fancy-title topmargin title-border">
								<h4>我的社交媒体</h4>
							</div>

							<a href="#" class="social-icon si-facebook si-small si-rounded si-light" title="Facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>
							
							<a href="#" class="social-icon si-twitter si-small si-rounded si-light" title="Twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>
							
							<a href="#" class="social-icon si-gplus si-small si-rounded si-light" title="Google+">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>

							<a href="#" class="social-icon si-linkedin si-small si-rounded si-light" title="LinkedIn">
								<i class="icon-linkedin"></i>
								<i class="icon-linkedin"></i>
							</a>
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
		//$(document).ready(function(){
		//});
	</script>
</body>
</html>