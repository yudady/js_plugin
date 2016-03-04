<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstree</title>


<script type="text/javascript" src="<s:url value="/resources/plugin/jquery/jquery-1.12.1.min.js" /> "></script>



<!-- jstree -->
<script type="text/javascript" src="<s:url value="/resources/plugin/jsTree/jstree-3.2.1/dist/jstree.min.js" /> "></script>
<link rel="stylesheet" href="<s:url value="/resources/plugin/jsTree/jstree-3.2.1/dist/themes/default/style.min.css" /> " type="text/css" />








<script type="text/javascript">
	$(function() {
		$('#navMenu').jstree({
			'plugins' : [ "themes", "state", "conditionalselect", "types" ],
			'core' : {
				"multiple" : false,
				'data' : {
					"url" : '<s:url value="/jstree/data" />',
					"dataType" : "json"
				},
				'themes' : {
					"theme" : "default",
					"dots" : true,
					"icons" : true
				}
			},
			'types' : {
				'default' : {
					'icon' : true
				},
				'linkUrl' : {
					"icon" : "glyphicon glyphicon-file"
				}
			},
			'conditionalselect' : function(node) {
				//$.log(node); // fire link
				if (node.type == 'linkUrl') {
					setTimeout(function() {
						window.location.href = node.a_attr.href;
					}, 300);
				}
				return true;
			}
		});
	});
</script>
</head>
<body>
	<div id="navMenu"></div>
</body>
</html>