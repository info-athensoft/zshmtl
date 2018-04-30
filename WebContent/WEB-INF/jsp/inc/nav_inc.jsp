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
	<li><a href="/index.html"><div>首页</div></a>
	</li>
	<li><a href="#"><div>关于我们</div></a>
		<ul>
			<li><a href="/aboutus-overview.html"><div>综述</div></a></li>
			<li><a href="/aboutus-senate.html"><div>胡子修参议员贺信</div></a></li>
			<li><a href="/aboutus-primeminister.html"><div>特鲁多总理贺信</div></a></li>
		</ul>
	</li>
	<li><a href="/team-consultant.html"><div>团队介绍</div></a>
		<ul>
			<li><a href="/team-consultant.html"><div>顾问成员</div></a></li>
			<li><a href="/team-committee.html"><div>理事成员</div></a></li>
			<li><a href="/team-member.html"><div>会员风采</div></a></li>
		</ul>
	</li>
	<li><a href="/news-list.html"><div>新闻动态</div></a>
	</li>
	<li><a href="/contactus.html"><div>联系我们</div></a>
		<ul>
			<li><a href="/contactus.html"><div>联系信息</div></a></li>
			<li><a href="/member-signup.html"><div>会员申请</div></a></li>
			<li><a href="/recruit.html"><div>诚招义工</div></a></li>
		</ul>
	</li>
	<li><a href="/ad-list.html"><div>广告快车</div></a>
		<ul>
			<li><a href="/ad-list.html"><div>会员广告</div></a></li>
			<li><a href="/ad-request.html"><div>广告联系</div></a></li>
		</ul>
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