<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test</title>
</head>
<body>
	<div>
		Test UAAS sessionScope.userAccount
		<p>
			AcctName:	${sessionScope.userAccount.acctName}<br/>
			Password:	${sessionScope.userAccount.password}
		</p>
	</div>
	
	<hr/>
	
	<div>
		Test News and Event
		<p>
			<c:forEach var="news" items="${listNews}">
				EventUUID:		${news.eventUUID}<br/>
				Title:			${news.title}<br/>
				Description:	${news.descShort}<br/>
				<br/>
			</c:forEach>
		</p>
	</div>
</body>
</html>