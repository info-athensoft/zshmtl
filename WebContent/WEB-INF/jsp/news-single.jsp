<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>

<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>

<c:set var="temp_img" value="http://via.placeholder.com/400x500"/>
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
	<title>News &amp; Events - Post | ZSHMTL</title>

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
				<h1>新闻动态与活动详情</h1>
				<span></span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index.html">Home</a></li>
					<li class="breadcrumb-item"><a href="/news-list.html">News &amp; Events</a></li>
					<li class="breadcrumb-item active" aria-current="page">Details</li>
				</ol>
			</div>

		</section><!-- #page-title end -->
		



		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Post Content
					============================================= -->
					<div class="postcontent nobottommargin clearfix">

						<div class="single-post nobottommargin">

							<!-- Single Post
							============================================= -->
							<div class="entry clearfix">

								<!-- Entry Title
								============================================= -->
								<div class="entry-title">
									<h2>${news.title}</h2>
								</div><!-- .entry-title end -->

								<!-- Entry Meta
								============================================= -->
								<ul class="entry-meta clearfix">
									<li><i class="icon-calendar3"></i> ${news.postDatetime}</li>
									<li><a href="#"><i class="icon-user"></i> admin</a></li>
									<!-- <li><i class="icon-folder-open"></i> <a href="#">General</a>, <a href="#">Media</a></li> -->
									<li><a href="#comments"><i class="icon-comments"></i> ${countComment} Comments</a></li>
									<!-- <li><a href="#"><i class="icon-camera-retro"></i></a></li> -->
								</ul><!-- .entry-meta end -->

								<!-- Entry Image
								============================================= -->
								<div class="entry-image">
									<!-- <a href="#"><img src="/images/blog/full/1.jpg" alt="Blog Single"></a>  -->
									<a href="#"><img src="${news.primaryEventMedia.mediaURL}${news.primaryEventMedia.mediaName}" alt="main image"></a>
								</div><!-- .entry-image end -->

								<!-- Entry Content
								============================================= -->
								<div class="entry-content notopmargin">

									<p>${news.descShort}</p>

									<p>${news.descLong}</p>


									<!-- Post Single - Content End -->

									<!-- Tag Cloud
									============================================= -->
									<div class="tagcloud clearfix bottommargin">
										<a href="#">general</a>
										<a href="#">information</a>
										<a href="#">media</a>
										<a href="#">press</a>
										<a href="#">gallery</a>
										<a href="#">illustration</a>
									</div><!-- .tagcloud end -->

									<div class="clear"></div>

									<!-- Post Single - Share
									============================================= -->
									<div class="si-share noborder clearfix">
										<span>Share this Post:</span>
										<div>
											<a href="#" class="social-icon si-borderless si-facebook">
												<i class="icon-facebook"></i>
												<i class="icon-facebook"></i>
											</a>
											<a href="#" class="social-icon si-borderless si-twitter">
												<i class="icon-twitter"></i>
												<i class="icon-twitter"></i>
											</a>
											<a href="#" class="social-icon si-borderless si-pinterest">
												<i class="icon-pinterest"></i>
												<i class="icon-pinterest"></i>
											</a>
											<a href="#" class="social-icon si-borderless si-gplus">
												<i class="icon-gplus"></i>
												<i class="icon-gplus"></i>
											</a>
											<a href="#" class="social-icon si-borderless si-email3">
												<i class="icon-email3"></i>
												<i class="icon-email3"></i>
											</a>
										</div>
									</div><!-- Post Single - Share End -->

								</div>
							</div><!-- .entry end -->
							
							
							<!-- Post Navigation
							============================================= -->
							<div id="oc-portfolio"
								class="owl-carousel portfolio-carousel carousel-widget"
								data-margin="20" data-nav="true" data-pagi="false"
								data-items-xs="1" data-items-sm="2" data-items-md="3"
								data-items-lg="4">
								
								<c:forEach var="eventMedia" items="${news.listEventMedia}">
									<div class="oc-item">
										<div class="iportfolio">
											<div class="portfolio-image">
												<a href="${eventMedia.mediaURL}${eventMedia.mediaName}" data-lightbox="image"> <img
													src="${eventMedia.mediaURL}${eventMedia.mediaName}" alt="news">
												</a>
												<!-- 
												<div class="portfolio-overlay">
													<a href="/images/portfolio/full/1.jpg" class="left-icon"
														data-lightbox="image"><i class="icon-line-plus"></i></a> <a
														href="/images/portfolio/full/1.jpg" class="right-icon"><i
														class="icon-line-ellipsis"></i></a>
												</div> -->
											</div>
											<div class="portfolio-desc">
												<span>${eventMedia.mediaLabel}</span>
											</div>
										</div>
									</div>
								</c:forEach>
								
								
							</div>







							<!-- Post Navigation
							============================================= -->
							<!-- 
							<div class="post-navigation clearfix">

								<div class="col_half nobottommargin">
									<a href="#">&lArr; This is a Standard post with a Slider Gallery</a>
								</div>

								<div class="col_half col_last tright nobottommargin">
									<a href="#">This is an Embedded Audio Post &rArr;</a>
								</div>

							</div>
							 -->
							
							<!-- .post-navigation end -->

							<!-- <div class="line"></div>  -->

							<!-- Post Author Info
							============================================= 
							<div class="card">
								<div class="card-header"><strong>Posted by <a href="#">John Doe</a></strong></div>
								<div class="card-body">
									<div class="author-image">
										<img src="/images/author/1.jpg" alt="" class="rounded-circle">
									</div>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, eveniet, eligendi et nobis neque minus mollitia sit repudiandae ad repellendus recusandae blanditiis praesentium vitae ab sint earum voluptate velit beatae alias fugit accusantium laboriosam nisi reiciendis deleniti tenetur molestiae maxime id quaerat consequatur fugiat aliquam laborum nam aliquid. Consectetur, perferendis?
								</div>
							</div>
							-->
							<!-- Post Single - Author End -->
							
							<!--
							
							<div class="line"></div>
							  
							<h4>Related Posts:</h4>

							<div class="related-posts clearfix">

								<div class="col_half nobottommargin">

									<div class="mpost clearfix">
										<div class="entry-image">
											<a href="#"><img src="/images/blog/small/10.jpg" alt="Blog Single"></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">This is an Image Post</a></h4>
											</div>
											<ul class="entry-meta clearfix">
												<li><i class="icon-calendar3"></i> 10th July 2014</li>
												<li><a href="#"><i class="icon-comments"></i> 12</a></li>
											</ul>
											<div class="entry-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia nisi perferendis.</div>
										</div>
									</div>

									<div class="mpost clearfix">
										<div class="entry-image">
											<a href="#"><img src="/images/blog/small/20.jpg" alt="Blog Single"></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">This is a Video Post</a></h4>
											</div>
											<ul class="entry-meta clearfix">
												<li><i class="icon-calendar3"></i> 24th July 2014</li>
												<li><a href="#"><i class="icon-comments"></i> 16</a></li>
											</ul>
											<div class="entry-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia nisi perferendis.</div>
										</div>
									</div>

								</div>

								<div class="col_half nobottommargin col_last">

									<div class="mpost clearfix">
										<div class="entry-image">
											<a href="#"><img src="/images/blog/small/21.jpg" alt="Blog Single"></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">This is a Gallery Post</a></h4>
											</div>
											<ul class="entry-meta clearfix">
												<li><i class="icon-calendar3"></i> 8th Aug 2014</li>
												<li><a href="#"><i class="icon-comments"></i> 8</a></li>
											</ul>
											<div class="entry-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia nisi perferendis.</div>
										</div>
									</div>

									<div class="mpost clearfix">
										<div class="entry-image">
											<a href="#"><img src="/images/blog/small/22.jpg" alt="Blog Single"></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">This is an Audio Post</a></h4>
											</div>
											<ul class="entry-meta clearfix">
												<li><i class="icon-calendar3"></i> 22nd Aug 2014</li>
												<li><a href="#"><i class="icon-comments"></i> 21</a></li>
											</ul>
											<div class="entry-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia nisi perferendis.</div>
										</div>
									</div>

								</div>

							</div>
							-->
							

							<!-- Comments
							============================================= -->
							<div id="comments" class="clearfix">

								<h3 id="comments-title"><span>${countComment}</span> 条评论</h3>

								<!-- Comments List
								============================================= -->
								<ol class="commentlist clearfix">
									
									<c:forEach var="review" items="${reviewList}">
										<li class="comment even thread-even depth-1" id="li-comment-1">
											<div id="comment-1" class="comment-wrap clearfix">
												<div class="comment-meta">
													<div class="comment-author vcard">
														<span class="comment-avatar clearfix">
														<img alt='' src='http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60' class='avatar avatar-60 photo avatar-default' height='60' width='60' /></span>
													</div>
												</div>
	
												<div class="comment-content clearfix">
													<div class="comment-author">${review.customerId}<span><a href="#" title="Permalink to this comment">${review.reviewDatetime}</a></span></div>
													<p>${review.reviewContent}</p>
													<a class='comment-reply-link' href='#'><i class="icon-reply"></i></a>
												</div>
	
												<div class="clear"></div>
											</div>
										</li>
									</c:forEach>
								</ol>
								
								<!-- .commentlist end -->

								 
								<div class="clear"></div>
								
								<!-- Comment Form
								============================================= -->
								<div id="respond" class="clearfix">

									<h3>发表 <span>您的评论</span></h3>
									
									<c:choose>
									    <c:when test="${sessionScope.userAccount==null}">
									       <h5>友情提醒：发表评论前请先<a href="/member-signup.html">登录</a></h5>
									    </c:when>    
									    <c:otherwise>
									        <label for="comment">评论者 : </label>${sessionScope.userAccount.acctName}
									    </c:otherwise>
									</c:choose>
									

									<form class="clearfix" action="#" method="post" id="commentform">
										<!-- 
										<div class="col_one_third">
											<label for="author">Name</label>
											<input type="text" name="author" id="author" value="" size="22" tabindex="1" class="sm-form-control" />
										</div>

										<div class="col_one_third">
											<label for="email">Email</label>
											<input type="text" name="email" id="email" value="" size="22" tabindex="2" class="sm-form-control" />
										</div>

										<div class="col_one_third col_last">
											<label for="url">Website</label>
											<input type="text" name="url" id="url" value="" size="22" tabindex="3" class="sm-form-control" />
										</div>
										 
										 
										<div class="clear"></div>-->

										<div class="col_full">
											
											<textarea id="comment" name="comment" cols="58" rows="7" tabindex="4" class="sm-form-control"></textarea>
										</div>

										<div class="col_full nobottommargin">
											<button name="submit" type="submit" id="submit-button" tabindex="5" value="Submit" class="button button-3d nomargin" onclick="submitComment();"><spring:message code="news-list-single-featurednews"/></button>
											<!--  <a href="" class="button button-3d nomargin">Submit Comment</a> -->
										</div>

									</form>

								</div><!-- #respond end -->

							</div><!-- #comments end -->

						</div>

					</div><!-- .postcontent end -->

					<!-- Sidebar
					============================================= -->
					<div class="sidebar nobottommargin col_last clearfix">
						<div class="sidebar-widgets-wrap">
							
							<div class="widget clearfix">
								<h4><spring:message code="news-list-single-featurednews"/></h4>
								<div id="recent-post-list-sidebar">
									<c:forEach var="recentNews" items="${recentNewsList}">
										<div class="spost clearfix">
											<div class="entry-image">
												<a href="#" class="nobg"><img class="rounded-circle" src="/images/magazine/small/1.jpg" alt=""></a>
											</div>
											<div class="entry-c">
												<div class="entry-title">
													<h4><a href="#">${recentNews.title}</a></h4>
												</div>
												<ul class="entry-meta">
												<li>${recentNews.postDatetime}</li>
											</ul>
											</div>
										</div>
									</c:forEach>
									
								</div>
							</div>
							
							<div class="widget clearfix">
								<h4><spring:message code="news-list-single-featuredads"/></h4>
								<div id="oc-portfolio-sidebar" class="owl-carousel carousel-widget" data-items="1" data-margin="10" data-loop="true" data-nav="false" data-autoplay="5000">
									
									<c:forEach var="adPost" items="${adPostList}">
									<div class="oc-item">
										<div class="iportfolio">
											<div class="portfolio-image">
												<a href="#">
													<img src="${adPost.adImage}" alt="Open Imagination">
												</a>
												<div class="portfolio-overlay">
													<a href="/images/blog/full/1.jpg" class="center-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>
												</div>
											</div>
											<div class="portfolio-desc center nobottompadding">
												<h3><a href="#">${adPost.globalId}</a></h3>
												<span>${adPost.adText}</span>
											</div>
										</div>
									</div>
									</c:forEach>
								</div>


							</div>

							<div class="widget clearfix">

								<h4>Tag Cloud</h4>
								<div class="tagcloud">
									<a href="#">general</a>
									<a href="#">videos</a>
									<a href="#">music</a>
									<a href="#">media</a>
									<a href="#">photography</a>
									<a href="#">parallax</a>
									<a href="#">ecommerce</a>
									<a href="#">terms</a>
									<a href="#">coupons</a>
									<a href="#">modern</a>
								</div>

							</div>

						</div>

					</div><!-- .sidebar end -->

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
	
	<!-- custom script -->
	<script>
		function submitComment(){
			
			
			var postContent = $("#comment").val();
			var eventUUID = '${news.eventUUID}';
				
			var businessObject = {
					'postContent':postContent,
					'targetId':eventUUID
			};
			
			var param = JSON.stringify(businessObject)
			//alert("Comment:"+param+", eventUUID="+eventUUID);
			
			//param = encodeURI(param);
			//alert(param);
			
			$.ajax({
		        type    :   "post",
		        contentType : 'application/json; charset=utf-8',
		     	url     : 	"/event/comment",
		     	data	:	param,
		        dataType:   "json",
		        timeout :   10000,
		        
		        success:function(msg){
		        	//alert("success");
		            location.href="/event/news/"+eventUUID;
		            //alert(msg.comment);
		        },
		        error:function(data){
		            //alert("ERROR: News comment failed.");
		            if(data.responseText=='loseSession'){
	                    //session失效时的处理  
	                }
		            location.href="/event/news/"+eventUUID;
		        },            
		        complete: function(XMLHttpRequest, textStatus){
		            //reset to avoid duplication
		        }        
		    });
		}
	</script>

</body>
</html>