<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>
<!-- END global variables settings -->

<!-- i18n -->
<c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.lang)}">
  <c:set var="loc" value="${param.lang}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- END i18n -->

<div id="logo">
	<a href="/index.html" class="standard-logo" data-dark-logo="/img/logo-dark.png"><img src="/img/logo.png" alt="ZSHMTL"></a>
	<a href="/index.html" class="retina-logo" data-dark-logo="/img/logo-dark@2x.png"><img src="/img/logo@2x.png" alt="ZSHMTL"></a>
</div>