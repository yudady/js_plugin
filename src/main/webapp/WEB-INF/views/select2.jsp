<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!doctype html>

<head>
<title>SweetAlert2</title>
<script type="text/javascript" src="<s:url value="/resources/plugin/jquery/jquery.1.8.0.min.js" /> "></script>

<!-- This is what you need -->
<script type="text/javascript" src="<s:url value="/resources/plugin/select2/select2-4.0.2/dist/js/select2.full.min.js" /> "></script>
<link rel="stylesheet" href="<s:url value="/resources/plugin/select2/select2-4.0.2/dist/css/select2.min.css" /> " type="text/css" />

<style type="text/css">
select {
	width: 300px;
}
</style>



<script type="text/javascript">
	$(document).ready(function() {
		$(".js-example-basic-single").select2();
		$(".js-example-basic-multiple").select2();

		$(".js-data-example-ajax").select2({
			ajax : {
				url : '<s:url value="/select2/data" />',
				dataType : 'json',
				data : function(params) {
					$.log(params);
					var queryParameters = {
						term : params.term
					}
					return queryParameters;
				},
				processResults : function(data) {
					$.log(data);
					return {
						results : $.map(data, function(item) {
							$.log(item);
							return {
								text : item.text,
								id : item.id
							}
						})
					};
				},
				cache: true
			}
		});
	});
</script>
</head>
<body>
	<div>
		<select class="js-example-basic-single">
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="WY">Wyoming</option>
		</select>
	</div>
	<br />
	<div>
		<select class="js-example-basic-multiple" multiple="multiple">
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="AL">Alabama</option>
			<option value="WY">Wyoming</option>
		</select>
	</div>
	<br />
	<div>
		<select class="js-data-example-ajax"></select>
	</div>
	<br />
</body>
