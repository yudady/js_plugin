<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery Scroll Table</title>

<link rel="stylesheet" href="<s:url value="/resources/plugin/jquery-ui-1.11.4/jquery-ui.theme.min.css" /> " type="text/css" />



<script type="text/javascript" src="<s:url value="/resources/plugin/jquery.1.8.0.min.js" /> "></script>
<script type="text/javascript" src="<s:url value="/resources/plugin/jquery-ui-1.11.4/jquery-ui.min.js" /> "></script>
<script type="text/javascript" src="<s:url value="/resources/plugin/jquery-scrolltable/jquery.scrolltable.js" /> "></script>






<script type="text/javascript">
	$(function() {

		$('#removeScroll').click(function() {
			$('.scrollTable').scrolltable('destroy');
		});
		$('#applyScroll').on('click', function() {
			$('.scrollTable').scrolltable({
				height : 'auto',
				maxHeight : 200,
				stripe : true,
				oddClass : 'odd'
			});
		});

		$('#applyScroll').trigger('click');
	});
</script>
<style type="text/css">
body {
	font-size: 0.9em;
	font-family: Arial, Verdana, sans-serif;
	color: #555;
}

h1 {
	margin-top: 0;
	float: left;
}

#controls {
	float: left;
	padding: 0.3em 1em;
}

table.scrollTable {
	width: 50%;
	border: 1px solid #ddd;
}

thead {
	background-color: #eee;
}

thead th {
	text-align: center;
	padding: 0.1em 0.3em;
}

tbody td {
	border-top: 1px solid #eee;
	border-right: 1px solid #eee;
	padding: 0.1em 0.3em;
}

tbody tr.odd td {
	background-color: #f9f9f9;
}
</style>
</head>
<body>
	<h1>jQuery Scroll Table Demo</h1>

	<div id="controls">
		<button id="removeScroll">Remove Scroll</button>
		<button id="applyScroll">Apply Scroll</button>
	</div>
	<div style="clear: both" />

	<table class="scrollTable" cellpadding="0" cellspacing="0" border="0">
		<thead>
			<tr>
				<!-- Notice it is smart about how to use the widths below, trying to maintain the intended layout -->
				<th width="10%" style="width: 10%">Col 1</th>
				<th>Col 2</th>
				<th style="width: 80px">Col 3</th>
				<th width="40%">Col 4</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Row 1</td>
				<td>Row 1 cell with some content</td>
				<td>Row 1</td>
				<td>Row 1 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 2</td>
				<td>Row 2 cell with some content</td>
				<td>Row 2</td>
				<td>Row 2 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 3</td>
				<td>Row 3 cell with some content</td>
				<td>Row 3</td>
				<td>Row 3 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 4</td>
				<td>Row 4 cell with some content</td>
				<td>Row 4</td>
				<td>Row 4 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 5</td>
				<td>Row 5 cell with some content</td>
				<td>Row 5</td>
				<td>Row 5 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 6</td>
				<td>Row 6 cell with some content</td>
				<td>Row 6</td>
				<td>Row 6 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 7</td>
				<td>Row 7 cell with some content</td>
				<td>Row 7</td>
				<td>Row 7 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 8</td>
				<td>Row 8 cell with some content</td>
				<td>Row 8</td>
				<td>Row 8 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 9</td>
				<td>Row 9 cell with some content</td>
				<td>Row 9</td>
				<td>Row 9 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 10</td>
				<td>Row 10 cell with some content</td>
				<td>Row 10</td>
				<td>Row 10 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 11</td>
				<td>Row 11 cell with some content</td>
				<td>Row 11</td>
				<td>Row 11 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 12</td>
				<td>Row 12 cell with some content</td>
				<td>Row 12</td>
				<td>Row 12 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 13</td>
				<td>Row 13 cell with some content</td>
				<td>Row 13</td>
				<td>Row 13 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 14</td>
				<td>Row 14 cell with some content</td>
				<td>Row 14</td>
				<td>Row 14 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 15</td>
				<td>Row 15 cell with some content</td>
				<td>Row 15</td>
				<td>Row 15 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 16</td>
				<td>Row 16 cell with some content</td>
				<td>Row 16</td>
				<td>Row 16 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 17</td>
				<td>Row 17 cell with some content</td>
				<td>Row 17</td>
				<td>Row 17 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 18</td>
				<td>Row 18 cell with some content</td>
				<td>Row 18</td>
				<td>Row 18 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 19</td>
				<td>Row 19 cell with some content</td>
				<td>Row 19</td>
				<td>Row 19 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 20</td>
				<td>Row 20 cell with some content</td>
				<td>Row 20</td>
				<td>Row 20 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 21</td>
				<td>Row 21 cell with some content</td>
				<td>Row 21</td>
				<td>Row 21 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 22</td>
				<td>Row 22 cell with some content</td>
				<td>Row 22</td>
				<td>Row 22 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 23</td>
				<td>Row 23 cell with some content</td>
				<td>Row 23</td>
				<td>Row 23 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 24</td>
				<td>Row 24 cell with some content</td>
				<td>Row 24</td>
				<td>Row 24 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 25</td>
				<td>Row 25 cell with some content</td>
				<td>Row 25</td>
				<td>Row 25 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 26</td>
				<td>Row 26 cell with some content</td>
				<td>Row 26</td>
				<td>Row 26 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 27</td>
				<td>Row 27 cell with some content</td>
				<td>Row 27</td>
				<td>Row 27 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 28</td>
				<td>Row 28 cell with some content</td>
				<td>Row 28</td>
				<td>Row 28 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 29</td>
				<td>Row 29 cell with some content</td>
				<td>Row 29</td>
				<td>Row 29 cell with more content inside of it</td>
			</tr>
			<tr>
				<td>Row 30</td>
				<td>Row 30 cell with some content</td>
				<td>Row 30</td>
				<td>Row 30 cell with more content inside of it</td>
			</tr>
		</tbody>
	</table>

</body>
</html>