<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title>index</title>
</head>
<body>
	<div>
		table auto scroll bar => <a href='<s:url value="/scrolltable" />'>scrolltable</a>
		<hr>
	</div>
	<div>
		menu tree => <a href='<s:url value="/jstree" />'>jstree</a>
		<hr>
	</div>
</body>
</html>