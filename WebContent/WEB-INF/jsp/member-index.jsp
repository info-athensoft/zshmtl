<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
				<h1>会员中心</h1>
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

					<div class="row clearfix">

						<div class="col-md-9">

							<img src="/images/icons/avatar.jpg" class="alignleft img-circle img-thumbnail notopmargin nobottommargin" alt="Avatar" style="max-width: 84px;">

							<div class="heading-block noborder">
								<h3>Your name</h3>
								<span>${sessionScope.userAccount.acctName}</span>
							</div>

							<div class="clear"></div>

							<div class="row clearfix">

								<div class="col-lg-12">

									<div class="tabs tabs-alt clearfix" id="tabs-profile">

										<ul class="tab-nav clearfix">
											<li><a href="#tab-profile"><i class="icon-rss2"></i> My Profile</a></li>
											<li><a href="#tab-posts"><i class="icon-pencil2"></i> My Posts</a></li>
											<li><a href="#tab-replies"><i class="icon-reply"></i> My Replies</a></li>
											<li><a href="#tab-connections"><i class="icon-users"></i> My Ads</a></li>
											<li><a href="#tab-records"><i class="icon-users"></i> My Records</a></li>
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
															<input type="text" id="register-form-gender" name="register-form-gender" class="form-control" value="${memberProfile.gender}"/>
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
											<div class="tab-content clearfix" id="tab-posts">

												<div class="row topmargin-sm clearfix">

													<div class="col-12 bottommargin-sm">
														<div class="ipost clearfix">
															<div class="row clearfix">
																<div class="col-md-4">
																	<div class="entry-image">
																		<a href="images/portfolio/full/17.jpg" data-lightbox="image"><img class="image_fade" src="images/blog/grid/17.jpg" alt="Standard Post with Image"></a>
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
																					<div class="slide"><img class="image_fade" src="images/blog/grid/10.jpg" alt="Standard Post with Gallery"></div>
																					<div class="slide"><img class="image_fade" src="images/blog/grid/20.jpg" alt="Standard Post with Gallery"></div>
																					<div class="slide"><img class="image_fade" src="images/blog/grid/21.jpg" alt="Standard Post with Gallery"></div>
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
											<div class="tab-content clearfix" id="tab-replies">

												<div class="clear topmargin-sm"></div>
												<ol class="commentlist noborder nomargin nopadding clearfix">
													<li class="comment even thread-even depth-1" id="li-comment-1">
														<div id="comment-1" class="comment-wrap clearfix">
															<div class="comment-meta">
																<div class="comment-author vcard">
																	<span class="comment-avatar clearfix">
																	<img alt='' src='http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60' class='avatar avatar-60 photo avatar-default' height='60' width='60' /></span>
																</div>
															</div>
															<div class="comment-content clearfix">
																<div class="comment-author">John Doe<span><a href="#" title="Permalink to this comment">April 24, 2012 at 10:46 am</a></span></div>
																<p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>
																<a class='comment-reply-link' href='#'><i class="icon-reply"></i></a>
															</div>
															<div class="clear"></div>
														</div>
														<ul class='children'>
															<li class="comment byuser comment-author-_smcl_admin odd alt depth-2" id="li-comment-3">
																<div id="comment-3" class="comment-wrap clearfix">
																	<div class="comment-meta">
																		<div class="comment-author vcard">

																			<span class="comment-avatar clearfix">
																			<img alt='' src='http://1.gravatar.com/avatar/30110f1f3a4238c619bcceb10f4c4484?s=40&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D40&amp;r=G' class='avatar avatar-40 photo' height='40' width='40' /></span>

																		</div>
																	</div>
																	<div class="comment-content clearfix">
																		<div class="comment-author"><a href='#' rel='external nofollow' class='url'>SemiColon</a><span><a href="#" title="Permalink to this comment">April 25, 2012 at 1:03 am</a></span></div>

																		<p>Nullam id dolor id nibh ultricies vehicula ut id elit.</p>

																		<a class='comment-reply-link' href='#'><i class="icon-reply"></i></a>
																	</div>
																	<div class="clear"></div>
																</div>
															</li>
														</ul>
													</li>

													<li class="comment byuser comment-author-_smcl_admin even thread-odd thread-alt depth-1" id="li-comment-2">
														<div class="comment-wrap clearfix">
															<div class="comment-meta">
																<div class="comment-author vcard">
																	<span class="comment-avatar clearfix">
																	<img alt='' src='http://1.gravatar.com/avatar/30110f1f3a4238c619bcceb10f4c4484?s=60&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G' class='avatar avatar-60 photo' height='60' width='60' /></span>
																</div>
															</div>
															<div class="comment-content clearfix">
																<div class="comment-author"><a href='http://themeforest.net/user/semicolonweb' rel='external nofollow' class='url'>SemiColon</a><span><a href="#" title="Permalink to this comment">April 25, 2012 at 1:03 am</a></span></div>

																<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>

																<a class='comment-reply-link' href='#'><i class="icon-reply"></i></a>
															</div>
															<div class="clear"></div>
														</div>
													</li>

												</ol>

											</div>
											<div class="tab-content clearfix" id="tab-connections">

												<div class="row topmargin-sm">
													<div class="col-lg-3 col-md-6 bottommargin">

														<div class="team">
															<div class="team-image">
																<img src="images/team/3.jpg" alt="John Doe">
															</div>
															<div class="team-desc">
																<div class="team-title"><h4>John Doe</h4><span>CEO</span></div>
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
																<img src="images/team/2.jpg" alt="Josh Clark">
															</div>
															<div class="team-desc">
																<div class="team-title"><h4>Josh Clark</h4><span>Co-Founder</span></div>
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
																<img src="images/team/8.jpg" alt="Mary Jane">
															</div>
															<div class="team-desc">
																<div class="team-title"><h4>Mary Jane</h4><span>Sales</span></div>
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

													<div class="col-lg-3 col-md-6">

														<div class="team">
															<div class="team-image">
																<img src="images/team/4.jpg" alt="Nix Maxwell">
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

													</div>
												</div>

											</div>
											
											
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
											</div>

										</div>

									</div>

								</div>

							</div>

						</div>

						<div class="w-100 line d-block d-md-none"></div>

						<div class="col-md-3 clearfix">

							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action clearfix">Profile <i class="icon-user float-right"></i></a>
								<!-- 
								<a href="#" class="list-group-item list-group-item-action clearfix">Servers <i class="icon-laptop2 float-right"></i></a>
								<a href="#" class="list-group-item list-group-item-action clearfix">Messages <i class="icon-envelope2 float-right"></i></a>
								<a href="#" class="list-group-item list-group-item-action clearfix">Billing <i class="icon-credit-cards float-right"></i></a>
								<a href="#" class="list-group-item list-group-item-action clearfix">Settings <i class="icon-cog float-right"></i></a>
								 -->
								<a href="/logout" class="list-group-item list-group-item-action clearfix">Logout <i class="icon-line2-logout float-right"></i></a>
							</div>

							<div class="fancy-title topmargin title-border">
								<h4>Account Status</h4>
							</div>
							
							<p>
								<strong>Member Class:</strong>&nbsp;&nbsp;
								<c:choose>
							        <c:when test="${memberProfile.memberLevel == 0}">
							        	<span class="">GUEST</span></c:when>
							        <c:when test="${memberProfile.memberLevel == 1}">
							        	<span class="">GENERAL</span></c:when>
							        <c:when test="${memberProfile.memberLevel == 2}">
							        	<span class="">VIP</span></c:when>
							        <c:when test="${memberProfile.memberLevel == 3}">
							        	<span class="">CORE</span></c:when>
							        <c:otherwise>UNKNOWN</c:otherwise>
							    </c:choose>
							    <br/>
								
								<strong>Status:</strong>&nbsp;&nbsp;
								<c:choose>
							        <c:when test="${memberProfile.memberStatus == 1}">
							        	<span class="badge badge-secondary badge-info">APPLIED</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 2}">
							        	<span class="badge badge-secondary badge-info">APPROVED</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 3}">
							        	<span class="badge badge-secondary badge-success">ACTIVE</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 4}">
							        	<span class="badge badge-secondary badge-warning">INACTIVE</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 5}">
							        	<span class="badge badge-secondary badge-danger">PENDING</span></c:when>
							        <c:when test="${memberProfile.memberStatus == 6}">
							        	<span class="badge badge-secondary badge-dark">BANNED</span></c:when>
							        <c:otherwise>UNKNOWN</c:otherwise>
							    </c:choose>
							    
								
								<c:choose>
								    <c:when test="${empty(memberProfile)}">
								        Member Profile does not exist!
								        <br />
								    </c:when>    
								    <c:otherwise>
									    ${memberProfile.acctName}<br/>
										<strong>Member Code:</strong>&nbsp;${memberProfile.memberCode}<br/>
										<strong>Member Id:</strong>&nbsp;${memberProfile.memberId}<br/>
										<strong>Application Date:</strong>&nbsp;&nbsp;<fmt:formatDate type="date" pattern="yyyy-MMM-dd" value="${memberProfile.memberApplyDate}"/><br/>
										<strong>Approved Date:</strong>&nbsp;&nbsp;<fmt:formatDate type="date" pattern="yyyy-MMM-dd" value="${memberProfile.memberApprovedDate}"/><br/>
								    </c:otherwise>
								</c:choose>
							</p>

							<div class="fancy-title topmargin title-border">
								<h4>Social Profiles</h4>
							</div>

							<a href="#" class="social-icon si-facebook si-small si-rounded si-light" title="Facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>

							<a href="#" class="social-icon si-gplus si-small si-rounded si-light" title="Google+">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>

							<a href="#" class="social-icon si-dribbble si-small si-rounded si-light" title="Dribbble">
								<i class="icon-dribbble"></i>
								<i class="icon-dribbble"></i>
							</a>

							<a href="#" class="social-icon si-flickr si-small si-rounded si-light" title="Flickr">
								<i class="icon-flickr"></i>
								<i class="icon-flickr"></i>
							</a>

							<a href="#" class="social-icon si-linkedin si-small si-rounded si-light" title="LinkedIn">
								<i class="icon-linkedin"></i>
								<i class="icon-linkedin"></i>
							</a>

							<a href="#" class="social-icon si-twitter si-small si-rounded si-light" title="Twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
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
		$(document).ready(function(){
			
		});
		
	
		
		
		
	</script>
</body>
</html>