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
	<li><a href="/index.html?lang=${loc}"><div><spring:message code="menu-home"/></div></a>
	</li>
	<li><a href="#"><div><spring:message code="menu-aboutus"/></div></a>
		<ul>
			<li><a href="/aboutus-overview.html?lang=${loc}"><div><spring:message code="menu-aboutus-overview"/></div></a></li>
			<li><a href="/aboutus-senate.html?lang=${loc}"><div><spring:message code="menu-aboutus-senator"/></div></a></li>
			<li><a href="/aboutus-primeminister.html?lang=${loc}"><div><spring:message code="menu-aboutus-primeminister"/></div></a></li>
		</ul>
	</li>
	<li><a href="/team-consultant.html?lang=${loc}"><div><spring:message code="menu-team"/></div></a>
		<ul>
			<li><a href="/team-consultant.html?lang=${loc}"><div><spring:message code="menu-team-consultant"/></div></a></li>
			<li><a href="/team-committee.html?lang=${loc}"><div><spring:message code="menu-team-committee"/></div></a></li>
			<li><a href="/team-member.html?lang=${loc}"><div><spring:message code="menu-team-member"/></div></a></li>
		</ul>
	</li>
	<li><a href="/news-list.html?lang=${loc}"><div><spring:message code="menu-news"/></div></a>
	</li>
	<li><a href="/contactus.html?lang=${loc}"><div><spring:message code="menu-contactus"/></div></a>
		<ul>
			<li><a href="/contactus.html?lang=${loc}"><div><spring:message code="menu-contactus-info"/></div></a></li>
			<li><a href="/login.html?lang=${loc}"><div><spring:message code="menu-contactus-login"/></div></a></li>
			<li><a href="/member-signup.html?lang=${loc}"><div><spring:message code="menu-contactus-apply"/></div></a></li>
			<li><a href="/member-index.html?lang=${loc}"><div><spring:message code="menu-contactus-membercenter"/></div></a></li>
			<li><a href="/recruit.html?lang=${loc}"><div><spring:message code="menu-contactus-recruit"/></div></a></li>
		</ul>
	</li>
	<li><a href="/ad-list.html?lang=${loc}"><div><spring:message code="menu-ad"/></div></a>
		<ul>
			<li><a href="/ad-list.html?lang=${loc}"><div><spring:message code="menu-ad-member"/></div></a></li>
			<li><a href="/ad-request.html?lang=${loc}"><div><spring:message code="menu-ad-request"/></div></a></li>
		</ul>
	</li>
	
	
</ul>

<!-- Top Language
============================================= -->
<ul class="currency-switcher">
	<li><a href="#"><div>EN</div></a>
		<ul>
			<li><a href="/index.html?lang=fr"><div><img src="/images/icons/flags/canada.gif" alt="French">&nbsp;&nbsp;&nbsp;FR</div></a></li>
			<li><a href="/index.html?lang=en"><div><img src="/images/icons/flags/canada.gif" alt="Canada">&nbsp;&nbsp;&nbsp;EN</div></a></li>
			<li><a href="/index.html?lang=zh_CN"><div><img src="/images/icons/flags/chineseS.gif" alt="Chinese">&nbsp;&nbsp;&nbsp;中文</div></a></li>
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
<!-- 
<i class="icon-search3"></i>
<i class="icon-user"></i>

<div id="top-search">
	<a href="#" id="top-search-trigger"><i class="icon-user"></i><i class="icon-line-cross"></i></a>
	<form action="/search.html" method="get">
		<input type="text" name="q" class="form-control" value="" placeholder="Type &amp; Hit Enter..">
	</form>
</div>
 -->
 
<!-- #top-search end -->
<!-- div id=top-search cannot be changed otherwise the layout will be disturbed -->
<div id="top-search">
	<a href="/login.html" id="top-user-trigger"><i class="icon-user"></i><i class="icon-line-cross"></i></a>
</div>


</nav>



<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113930092-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-113930092-1');
</script>