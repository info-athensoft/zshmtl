<%@ page contentType="text/html; charset=utf-8"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- page variables  -->
<c:set var="img_dir" value="/images"></c:set>
<!-- END page variables -->

<!-- i18n -->
<c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.lang)}">
  <c:set var="loc" value="${param.lang}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- END i18n -->
<footer id="footer" class="dark">

	<div class="container">

		<!-- Footer Widgets
		============================================= -->
		<div class="footer-widgets-wrap clearfix">

			<div class="col_two_third">

				<div class="col_one_third">

					<div class="widget clearfix">

						  <img src="/images/footer-widget-logo2.png" alt="" class="footer-logo"> 
						<!-- <img src="/img/logo.png" alt="" class="footer-logo"> -->
						
						<!-- 
						<p>We believe in <strong>Simple</strong>, <strong>Creative</strong> &amp; <strong>Flexible</strong> Design Standards.</p>
						 -->
						
						<div style="background: url('/images/world-map.png') no-repeat center center; background-size: 100%;">
							<address>
								<strong><spring:message code="footer-contact-title-1"/></strong><br>
								<spring:message code="footer-contact-addr-line-1"/><br/>
								<spring:message code="footer-contact-addr-line-2"/><br/>
							</address>
							<abbr title="Phone Number"><strong><spring:message code="footer-contact-title-phone"/></strong></abbr> (514) 888 1234<br>
							<abbr title="Fax"><strong><spring:message code="footer-contact-title-fax"/></strong></abbr> (514) 888 4321<br>
							<abbr title="Email Address"><strong><spring:message code="footer-contact-title-email"/></strong></abbr> info@yourcompany.com
						</div>

					</div>

				</div>

				<div class="col_one_third">

					<div class="widget widget_links clearfix">

						<h4><spring:message code="footer-qlink-title"/></h4>

						<ul>
							<li><a href="/aboutus-overview.html?lang=${loc}"><spring:message code="footer-qlink-aboutus"/></a></li>
							<li><a href="/team-committee.html?lang=${loc}"><spring:message code="footer-qlink-team"/></a></li>
							<li><a href="/news-list.html?lang=${loc}"><spring:message code="footer-qlink-news"/></a></li>
							<li><a href="/member-signup.html?lang=${loc}"><spring:message code="footer-qlink-member"/></a></li>
							<li><a href="/recruit.html?lang=${loc}"><spring:message code="footer-qlink-recruit"/></a></li>
							<li><a href="/ad-list.html?lang=${loc}"><spring:message code="footer-qlink-ad"/></a></li>
							<li><a href="/contactus.html?lang=${loc}"><spring:message code="footer-qlink-contactus"/></a></li>
						</ul>

					</div>

				</div>

				<div class="col_one_third col_last">

					<div class="widget clearfix">
						<h4><spring:message code="footer-resent-post-title"/></h4>

						<div id="post-list-footer">
							<div class="spost clearfix">
								<div class="entry-c">
									<div class="entry-title">
										<h4><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h4>
									</div>
									<ul class="entry-meta">
										<li>10th July 2014</li>
									</ul>
								</div>
							</div>

							<div class="spost clearfix">
								<div class="entry-c">
									<div class="entry-title">
										<h4><a href="#">Elit Assumenda vel amet dolorum quasi</a></h4>
									</div>
									<ul class="entry-meta">
										<li>10th July 2014</li>
									</ul>
								</div>
							</div>

						</div>
					</div>

				</div>

			</div>

			<div class="col_one_third col_last">

				<div class="widget clearfix" style="margin-bottom: -20px;">

					<div class="row">

						<div class="col-lg-6 bottommargin-sm">
							<div class="counter counter-small"><span data-from="50" data-to="11160" data-refresh-interval="80" data-speed="3000" data-comma="true"></span>+</div>
							<h5 class="nobottommargin">Views</h5>
						</div>

						<div class="col-lg-6 bottommargin-sm">
							<div class="counter counter-small"><span data-from="100" data-to="500" data-refresh-interval="50" data-speed="2000" data-comma="true"></span>+</div>
							<h5 class="nobottommargin">Members</h5>
						</div>

					</div>

				</div>

				<div class="widget subscribe-widget clearfix">
					<h5><strong>Subscribe</strong> to Our Newsletter to get Important News, Amazing Offers &amp; Inside Scoops:</h5>
					<div class="widget-subscribe-form-result"></div>
					<form id="widget-subscribe-form" action="include/subscribe.php" role="form" method="post" class="nobottommargin">
						<div class="input-group divcenter">
							<div class="input-group-prepend">
								<div class="input-group-text"><i class="icon-email2"></i></div>
							</div>
							<input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email" class="form-control required email" placeholder="Enter your Email">
							<div class="input-group-append">
								<button class="btn btn-success" type="submit">Subscribe</button>
							</div>
						</div>
					</form>
				</div>


			</div>

		</div><!-- .footer-widgets-wrap end -->

	</div>

	<!-- Copyrights
	============================================= -->
	<div id="copyrights">

		<div class="container clearfix">

			<div class="col_half">
				<spring:message code="bottom-copyright"/><br/>
				<div class="copyright-links"><a href="#"><spring:message code="bottom-term"/></a> / <a href="#"><spring:message code="bottom-privacy"/></a></div>
			</div>

			<div class="col_half col_last tright">
				<div class="fright clearfix">
					<a href="#" class="social-icon si-small si-borderless si-facebook">
						<i class="icon-facebook"></i>
						<i class="icon-facebook"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-twitter">
						<i class="icon-twitter"></i>
						<i class="icon-twitter"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-pinterest">
						<i class="icon-pinterest"></i>
						<i class="icon-pinterest"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-vimeo">
						<i class="icon-vimeo"></i>
						<i class="icon-vimeo"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-linkedin">
						<i class="icon-linkedin"></i>
						<i class="icon-linkedin"></i>
					</a>
				</div>

				<div class="clear"></div>

				<i class="icon-envelope2"></i> fenghua18@gmail.com <span class="middot">&middot;</span> <i class="icon-headphones"></i> +1-514-8888-8888 
			</div>

		</div>

	</div><!-- #copyrights end -->

</footer><!-- #footer end -->



<script>
function doSubscribe(){
	//alert("doSubscribe: /support/subscribe");
	var email = $("#newsLetterEmail").val();
	//alert(email);
	var sendData = 'email='+email;
	//alert(sendData);
	
	$.ajax({
        type: "POST",
        url: "/support/subscribe",
        data : sendData,
        dataType : "json",
        timeout: 5000,
        success: function(msg) {
        	//alert("ok");
        	window.location.reload();
        },
        error: function(request) {  
            //alert("Connection error:"+request.error);  
        }
    });
}
</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113930092-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-113930092-1');
</script>