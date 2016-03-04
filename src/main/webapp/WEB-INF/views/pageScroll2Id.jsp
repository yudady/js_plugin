<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pageScroll2Id</title>

<link rel="stylesheet" href="<s:url value="/resources/plugin/page-scroll-to-id/page-scroll-to-id-1.5.4/examples/style.css" /> " type="text/css" />

<script type="text/javascript" src="<s:url value="/resources/plugin/jquery/jquery.1.8.0.min.js" /> "></script>
<script type="text/javascript" src="<s:url value="/resources/plugin/page-scroll-to-id/page-scroll-to-id-1.5.4/jquery.malihu.PageScroll2id.js" /> "></script>


<script>
	$(function() {
		/* Page Scroll to id fn call */
		$("#navigation-menu a,a[href='#top'],a[rel='m_PageScroll2id']")
				.mPageScroll2id({
					highlightSelector : "#navigation-menu a"
				});

		/* demo functions */
		$("a[rel='next']").click(function(e) {
			e.preventDefault();
			var to = $(this).parent().parent("section").next().attr("id");
			$.mPageScroll2id("scrollTo", to);
		});

		$("#btn2").on('click',function(){
			$.mPageScroll2id("scrollTo", "#section-2");
		});
		$("#btn3").on('click',function(){
			$.mPageScroll2id("scrollTo", "#section-3");
		});
		$("#btn4").on('click',function(){
			$.mPageScroll2id("scrollTo", "#section-4");
		});
	});
</script>

</head>
<body>
	<header id="section-0">
		<h1>Page Scroll to id - jQuery plugin demo</h1>

		<button id="btn2" >Go 2</button>
		<button id="btn3" >Go 3</button>
		<button id="btn4" >Go 4</button>
	</header>

	<nav id="navigation-menu">
		<ul>
			<li><a href="#section-1">Section 1</a></li>
			<li><a href="#section-2">Section 2</a></li>
			<li><a href="#section-3">Section 3</a></li>
			<li><a href="#section-4">Section 4</a></li>
			<li><a href="#section-5">Section 5</a></li>
			<li><a href="#section-6">Section 6</a></li>
			<li><a href="#section-7">Section 7</a></li>
			<li><a href="#section-0">Section 0</a></li>
		</ul>
	</nav>

	<div id="content">
		<section id="section-1">
			<div class="content">
				<h2>Section 1</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<hr />
				<a href="#top">&uarr; Back to top</a> <a href="#" rel="next">&darr; Next section</a>
			</div>
		</section>
		<section id="section-2">
			<div class="content">
				<h2>Section 2</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<hr />
				<a href="#top">&uarr; Back to top</a> <a href="#" rel="next">&darr; Next section</a>
			</div>
		</section>
		<section id="section-3">
			<div class="content">
				<h2>Section 3</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<hr />
				<a href="#top">&uarr; Back to top</a> <a href="#" rel="next">&darr; Next section</a>
			</div>
		</section>
		<section id="section-4">
			<div class="content">
				<h2>Section 4</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<hr />
				<a href="#top">&uarr; Back to top</a> <a href="#" rel="next">&darr; Next section</a>
			</div>
		</section>
		<section id="section-5">
			<div class="content">
				<h2>Section 5</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<hr />
				<a href="#top">&uarr; Back to top</a> <a href="#" rel="next">&darr; Next section</a>
			</div>
		</section>
		<section id="section-6">
			<div class="content">
				<h2>Section 6</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<hr />
				<a href="#top">&uarr; Back to top</a> <a href="#" rel="next">&darr; Next section</a>
			</div>
		</section>
		<section id="section-7">
			<div class="content">
				<h2>Section 7</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<hr />
				<a href="#top">&uarr; Back to top</a>
			</div>
		</section>
	</div>

	<footer>
		<p>
			Page Scroll to id - jQuery plugin by <a href="http://manos.malihu.gr">malihu</a>. Plugin homepage: <a href="http://manos.malihu.gr/page-scroll-to-id">http://manos.malihu.gr/page-scroll-to-id</a>.
		</p>
	</footer>

</body>
</html>