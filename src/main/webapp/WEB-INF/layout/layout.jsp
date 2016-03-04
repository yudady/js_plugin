<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title><decorator:title default="javascript" /></title>
<decorator:head />
</head>
<body>
	<header>
			<a href='<s:url value="/" />'>go to index page</a>
	</header>


	<br />
	<br />
	<hr />

	<article>
		<section class="col-md-12">
			<decorator:body />
		</section>
	</article>

</body>
</html>