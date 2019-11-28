<%@ page contentType="text/html; charset=utf-8"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- page variables  -->
<c:set var="img_dir" value="/images"></c:set>
<!-- END page variables -->

<!-- i18n -->
<c:set var="loc" value="zh_CN"/>
<c:if test="${!(empty param.lang)}">
  <c:set var="loc" value="${param.lang}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- END i18n -->

<nav id="primary-menu">

<ul>
	<li><a href="/index.html"><div>Home</div></a>
	</li>
	<li><a href="/overview.html"><div>About us</div></a>
		<ul>
			<li><a href="/overview.html"><div>Overview</div></a></li>
		</ul>
	</li>
	<li><a href="/team-consultant.html"><div>Team</div></a>
		<ul>
			<li><a href="/team-consultant.html"><div>Consultants</div></a></li>
			<li><a href="/team-committee.html"><div>Committee</div></a></li>
			<li><a href="/team-member.html"><div>Members</div></a></li>
		</ul>
	</li>
	<li><a href="/news.html"><div>News &amp; Event</div></a>
	</li>
	<li><a href="/contactus.html"><div>Contact us</div></a>
		<ul>
			<li><a href="/contactus.html"><div>Contact Info</div></a></li>
			<li><a href="/signup.html"><div>Apply for membership</div></a></li>
			<li><a href="/recruit.html"><div>Recruit Volunteers</div></a></li>
		</ul>
	</li>
	<li><a href="/ad.html"><div>Advertising</div></a>
	</li>
	
	
</ul>

<!-- Top Language
============================================= -->
<ul class="currency-switcher">
	<li><a href="#"><div>EN</div></a>
		<ul>
			<li><a href="#"><div><img src="/images/icons/flags/french.png" alt="French"> FR</div></a></li>
			<li><a href="#"><div><img src="/images/icons/flags/german.png" alt="German"> DE</div></a></li>
			<li><a href="#"><div><img src="/images/icons/flags/italian.png" alt="Italian"> IT</div></a></li>
		</ul>
	</li>
</ul>
<!-- #top-Language end -->


<!-- Top Cart
============================================= -->
<!-- 
<div id="top-cart">
	<a href="#" id="top-cart-trigger"><i class="icon-shopping-cart"></i><span>5</span></a>
	<div class="top-cart-content">
		<div class="top-cart-title">
			<h4>Shopping Cart</h4>
		</div>
		<div class="top-cart-items">
			<div class="top-cart-item clearfix">
				<div class="top-cart-item-image">
					<a href="#"><img src="/images/shop/small/1.jpg" alt="Blue Round-Neck Tshirt" /></a>
				</div>
				<div class="top-cart-item-desc">
					<a href="#">Blue Round-Neck Tshirt</a>
					<span class="top-cart-item-price">$19.99</span>
					<span class="top-cart-item-quantity">x 2</span>
				</div>
			</div>
			<div class="top-cart-item clearfix">
				<div class="top-cart-item-image">
					<a href="#"><img src="/images/shop/small/6.jpg" alt="Light Blue Denim Dress" /></a>
				</div>
				<div class="top-cart-item-desc">
					<a href="#">Light Blue Denim Dress</a>
					<span class="top-cart-item-price">$24.99</span>
					<span class="top-cart-item-quantity">x 3</span>
				</div>
			</div>
		</div>
		<div class="top-cart-action clearfix">
			<span class="fleft top-checkout-price">$114.95</span>
			<button class="button button-3d button-small nomargin fright">View Cart</button>
		</div>
	</div>
</div> -->
<!-- #top-cart end -->




<!-- Top Search
============================================= -->
<div id="top-search">
	<a href="#" id="top-search-trigger"><i class="icon-search3"></i><i class="icon-line-cross"></i></a>
	<form action="/search.html" method="get">
		<input type="text" name="q" class="form-control" value="" placeholder="Type &amp; Hit Enter..">
	</form>
</div>
<!-- #top-search end -->

</nav>



<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113930092-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-113930092-1');
</script>