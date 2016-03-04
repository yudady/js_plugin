<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!doctype html>

<head>
<title>poshytip</title>

<!-- Tooltip classes -->
<link rel="stylesheet" href="<s:url value="/resources/plugin/tooltip/poshytip-1.2/src/tip-yellow/tip-yellow.css" /> " type="text/css" />
<link rel="stylesheet" href="<s:url value="/resources/plugin/tooltip/poshytip-1.2/src/tip-violet/tip-violet.css" /> " type="text/css" />
<link rel="stylesheet" href="<s:url value="/resources/plugin/tooltip/poshytip-1.2/src/tip-darkgray/tip-darkgray.css" /> " type="text/css" />
<link rel="stylesheet" href="<s:url value="/resources/plugin/tooltip/poshytip-1.2/src/tip-skyblue/tip-skyblue.css" /> " type="text/css" />
<link rel="stylesheet" href="<s:url value="/resources/plugin/tooltip/poshytip-1.2/src/tip-yellowsimple/tip-yellowsimple.css" /> " type="text/css" />
<link rel="stylesheet" href="<s:url value="/resources/plugin/tooltip/poshytip-1.2/src/tip-twitter/tip-twitter.css" /> " type="text/css" />
<link rel="stylesheet" href="<s:url value="/resources/plugin/tooltip/poshytip-1.2/src/tip-green/tip-green.css" /> " type="text/css" />


<script type="text/javascript" src="<s:url value="/resources/plugin/tooltip/poshytip-1.2/demo/includes/jquery-1.4.2.min.js" /> "></script>
<!-- This is what you need -->
<script type="text/javascript" src="<s:url value="/resources/plugin/tooltip/poshytip-1.2/src/jquery.poshytip.js" /> "></script>

<!-- Neglect these files - they are used just to make the demo page prettier -->
<link rel="stylesheet" href="<s:url value="/resources/plugin/tooltip/poshytip-1.2/demo/includes/demos.css" /> " type="text/css" />
<script type="text/javascript" src="<s:url value="/resources/plugin/tooltip/poshytip-1.2/demo/includes/sh_main.min.js" /> "></script>
<script type="text/javascript" src="<s:url value="/resources/plugin/tooltip/poshytip-1.2/demo/includes/demos.js" /> "></script>




<!-- Setup examples on this page -->
<script type="text/javascript">
	$(function() {

		$('#demo-basic').poshytip();

		$('#demo-tip-yellow').poshytip();

		$('#demo-tip-violet').poshytip({
			className : 'tip-violet',
			bgImageFrameSize : 9
		});
		$('#demo-tip-darkgray').poshytip({
			className : 'tip-darkgray',
			bgImageFrameSize : 11,
			offsetX : -25
		});
		$('#demo-tip-skyblue').poshytip({
			className : 'tip-skyblue',
			bgImageFrameSize : 9,
			offsetX : 0,
			offsetY : 20
		});
		$('#demo-tip-yellowsimple').poshytip({
			className : 'tip-yellowsimple',
			showTimeout : 1,
			alignTo : 'target',
			alignX : 'center',
			offsetY : 5,
			allowTipHover : false
		});
		$('#demo-tip-twitter').poshytip({
			className : 'tip-twitter',
			showTimeout : 1,
			alignTo : 'target',
			alignX : 'center',
			offsetY : 5,
			allowTipHover : false,
			fade : false,
			slide : false
		});
		$('#demo-tip-green').poshytip({
			className : 'tip-green',
			offsetX : -7,
			offsetY : 16,
			allowTipHover : false
		});
		$('#demo-form-name').poshytip({
			className : 'tip-yellowsimple',
			showOn : 'focus',
			alignTo : 'target',
			alignX : 'right',
			alignY : 'center',
			offsetX : 5,
			showTimeout : 100
		});
		$('#demo-form-email').poshytip({
			className : 'tip-yellowsimple',
			showOn : 'focus',
			alignTo : 'target',
			alignX : 'left',
			alignY : 'center',
			offsetX : 5,
			showTimeout : 100
		});
		$('#demo-form-site').poshytip({
			className : 'tip-yellowsimple',
			showOn : 'focus',
			alignTo : 'target',
			alignX : 'inner-left',
			offsetX : 0,
			offsetY : 5,
			showTimeout : 100
		});
		$('#demo-form-subject').poshytip({
			className : 'tip-yellowsimple',
			showOn : 'focus',
			alignTo : 'target',
			alignX : 'center',
			alignY : 'bottom',
			offsetX : 0,
			offsetY : 5,
			showTimeout : 100
		});
		$('#demo-async-timeout').poshytip({
			content : function(updateCallback) {
				window.setTimeout(function() {
					updateCallback('Tooltip content updated!');
				}, 1000);
				return 'Loading...';
			}
		});

		var flickrFeedsCache = {};
		$('#demo-async-flickr > a')
				.poshytip(
						{
							className : 'tip-darkgray',
							bgImageFrameSize : 11,
							alignY : 'bottom',
							content : function(updateCallback) {
								var rel = $(this).attr('rel');
								if (flickrFeedsCache[rel]
										&& flickrFeedsCache[rel].container)
									return flickrFeedsCache[rel].container;
								if (!flickrFeedsCache[rel]) {
									flickrFeedsCache[rel] = {
										container : null
									};
									var tagsComma = rel.substring(4).replace(
											'-', ',');
									$
											.getJSON(
													'http://api.flickr.com/services/feeds/photos_public.gne?tags='
															+ tagsComma
															+ '&tagmode=all&format=json&jsoncallback=?',
													function(data) {
														var container = $(
																'<div/>')
																.addClass(
																		'flickr-thumbs');
														$
																.each(
																		data.items,
																		function(
																				i,
																				item) {
																			$(
																					'<a/>')
																					.attr(
																							'href',
																							item.link)
																					.append(
																							$(
																									'<img/>')
																									.attr(
																											'src',
																											item.media.m))
																					.appendTo(
																							container)
																					.data(
																							'tip',
																							'<strong>'
																									+ (item.title || '(no title)')
																									+ '</strong><br />by: '
																									+ item.author
																											.match(/\((.*)\)/)[1]);
																			if (i == 4)
																				return false;
																		});
														// add tips for the images inside the main tip
														container
																.find('a')
																.poshytip(
																		{
																			content : function() {
																				return $(
																						this)
																						.data(
																								'tip');
																			},
																			className : 'tip-yellowsimple',
																			showTimeout : 100,
																			alignTo : 'target',
																			alignX : 'center',
																			alignY : 'bottom',
																			offsetY : 5,
																			allowTipHover : false,
																			hideAniDuration : 0
																		});
														// call the updateCallback function to update the content in the main tooltip
														// and also store the content in the cache
														updateCallback(flickrFeedsCache[rel].container = container);
													});
								}
								return 'Loading images...';
							}
						});
		$('#demo-follow-cursor').poshytip({
			followCursor : true,
			slide : false
		});
		$('#demo-manual-trigger').poshytip({
			content : 'Hey, there! This is a tooltip.',
			showOn : 'none',
			alignTo : 'target',
			alignX : 'inner-left',
			offsetX : 0,
			offsetY : 5
		});
		$('#button-show').click(function() {
			$('#demo-manual-trigger').poshytip('show');
		});
		$('#button-show-delayed').click(function() {
			$('#demo-manual-trigger').poshytip('showDelayed', 2000);
		});
		$('#button-hide').click(function() {
			$('#demo-manual-trigger').poshytip('hide');
		});
		$('#button-hide-delayed').click(function() {
			$('#demo-manual-trigger').poshytip('hideDelayed', 2000);
		});
		$('#button-update').click(
				function() {
					$('#demo-manual-trigger').poshytip('update',
							'I am a new content :)');
				});
		$('#button-disable').click(function() {
			$('#demo-manual-trigger').poshytip('disable');
		});
		$('#button-enable').click(function() {
			$('#demo-manual-trigger').poshytip('enable');
		});
		$('#button-destroy').click(function() {
			$('#demo-manual-trigger').poshytip('destroy');
		});
		$('#demo-live-events > a').poshytip({
			liveEvents : true
		});
		$('#button-live-events')
				.click(
						function() {
							$('#demo-live-events')
									.append(
											', <a title="Hey, there! This is a tooltip." href="#">Hover for a tooltip</a>');
						});

	});
</script>
<style type="text/css">
.flickr-thumbs {
	overflow: hidden;
}

.flickr-thumbs a {
	float: left;
	display: block;
	margin: 0 3px;
	border: 1px solid #333;
}

.flickr-thumbs a:hover {
	border-color: #eee;
}

.flickr-thumbs img {
	display: block;
	width: 60px;
	height: 60px;
}
</style>



</head>

<body>

	<div id="holder">

		<div id="nav">
			<h2>Demo Page Navigation</h2>
			<ul>
				<li class="first"><a href="#examples">Usage Examples</a>
					<ul>
						<li><a href="#styles">Styles (Classes)</a></li>
						<li><a href="#form-tooltips">Form Tooltips (with varying positioning)</a></li>
						<li><a href="#async-content">Asynchronous Loading of the Content</a>
							<ul>
								<li><a href="#async-simple">Simple Example</a></li>
								<li><a href="#async-flickr-feeds">Loading Flickr Feeds</a></li>
							</ul></li>
						<li><a href="#follow-cursor">Following the Mouse Cursor</a></li>
						<li><a href="#manual-trigger">API Example - Triggering the Tooltip Manually</a></li>
						<li><a href="#live-events">Using Live Events</a></li>
					</ul></li>
				<li><a href="#options">Options</a></li>
				<li><a href="#methods">Methods</a></li>
				<li><a href="#notes">Notes</a></li>
				<li><a href="#license">License</a></li>
				<li><a href="#download">Download</a></li>
				<li><a href="#support">Support</a></li>
				<li class="last"><a href="#donate">Donate</a></li>
			</ul>
			<h2>Next?</h2>
			<ul>
				<li class="first"><a href="http://vadikom.com/tools/poshy-tip-jquery-plugin-for-stylish-tooltips/">&laquo; Back to the Poshy Tip Page</a></li>
				<li class="last"><a href="http://vadikom.com/">&laquo; Back to Vadikom.com</a></li>
			</ul>
		</div>

		<div id="content">
			<h1>
				Poshy Tip jQuery Plugin <span>Demo Page</span>
			</h1>

			<h2 id="examples">Usage Examples</h2>

			<p>
				The default browser tooltip that displays the value of the
				<code>title</code>
				attribute is replaced with a "poshier" version:
			</p>

			<!-- #demo-basic -->
			<p>
				<a id="demo-basic" title="Hey, there! This is a tooltip." href="#">Hover for a tooltip</a>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-basic').poshytip();</pre>
			</div>

			<h3 id="styles">Styles (Classes)</h3>

			<p>Using different tooltip classes is easy. Here are some examples that are included in the download package (in the "src" folder).</p>

			<!-- #demo-tip-yellow -->
			<p>
				<a id="demo-tip-yellow" title="Hey, there! This is a tooltip." href="#">.tip-yellow</a>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-tip-yellow').poshytip();</pre>
			</div>

			<!-- #demo-tip-violet -->
			<p>
				<a id="demo-tip-violet" title="Hey, there! This is a tooltip." href="#">.tip-violet</a>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-tip-violet').poshytip({
	className: 'tip-violet',
	bgImageFrameSize: 9
});</pre>
			</div>

			<!-- #demo-tip-darkgray -->
			<p>
				<a id="demo-tip-darkgray" title="Hey, there! This is a tooltip." href="#">.tip-darkgray</a>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-tip-darkgray').poshytip({
	className: 'tip-darkgray',
	bgImageFrameSize: 11,
	offsetX: -25
});</pre>
			</div>

			<!-- #demo-tip-skyblue -->
			<p>
				<a id="demo-tip-skyblue" title="Hey, there! This is a tooltip." href="#">.tip-skyblue</a>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-tip-skyblue').poshytip({
	className: 'tip-skyblue',
	bgImageFrameSize: 9,
	offsetX: 0,
	offsetY: 20
});</pre>
			</div>

			<!-- #demo-tip-yellowsquare -->
			<p>
				<a id="demo-tip-yellowsimple" title="Hey, there! This is a tooltip." href="#">.tip-yellowsimple</a> (no background-image used for the tooltip body)
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-tip-yellowsimple').poshytip({
	className: 'tip-yellowsimple',
	showTimeout: 1,
	alignTo: 'target',
	alignX: 'center',
	offsetY: 5,
	allowTipHover: false
});</pre>
			</div>

			<!-- #demo-tip-twitter -->
			<p>
				<a id="demo-tip-twitter" title="Follow vadikom" href="#">.tip-twitter</a> (ala Twitter)
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-tip-twitter').poshytip({
	className: 'tip-twitter',
	showTimeout: 1,
	alignTo: 'target',
	alignX: 'center',
	offsetY: 5,
	allowTipHover: false,
	fade: false,
	slide: false
});</pre>
			</div>

			<!-- #demo-tip-green -->
			<p>
				<a id="demo-tip-green" title="Hey, there! This is a tooltip." href="#">.tip-green</a>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-tip-green').poshytip({
	className: 'tip-green',
	offsetX: -7,
	offsetY: 16,
	allowTipHover: false
});</pre>
			</div>

			<h3 id="form-tooltips">Form Tooltips (with varying positioning)</h3>

			<p>
				Adding form input field tooltips is simple. You just have to make sure they are triggered on focus/blur (i.e.
				<code>showOn: 'focus'</code>
				) and positioned relatively to the target element (i.e.
				<code>alignTo: 'target'</code>
				). The script also updates the position of such tooltips if the window is resized (e.g. show some of the tips below and resize your browser window for a
				demo).
			</p>

			<!-- #demo-form-name -->
			<p>
				<label for="demo-form-name">Name:</label><br /> <input id="demo-form-name" type="text" size="30" title="Enter your name" />
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-form-name').poshytip({
	className: 'tip-yellowsimple',
	showOn: 'focus',
	alignTo: 'target',
	alignX: 'right',
	alignY: 'center',
	offsetX: 5,
	showTimeout: 100
});</pre>
			</div>

			<!-- #demo-form-email -->
			<p>
				<label for="demo-form-email">Email:</label><br /> <input id="demo-form-email" type="text" size="30" title="Enter a valid email" />
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-form-email').poshytip({
	className: 'tip-yellowsimple',
	showOn: 'focus',
	alignTo: 'target',
	alignX: 'left',
	alignY: 'center',
	offsetX: 5,
	showTimeout: 100
});</pre>
			</div>

			<!-- #demo-form-site -->
			<p>
				<label for="demo-form-site">Site:</label><br /> <input id="demo-form-site" type="text" size="30" title="Enter your website URL" />
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-form-site').poshytip({
	className: 'tip-yellowsimple',
	showOn: 'focus',
	alignTo: 'target',
	alignX: 'inner-left',
	offsetX: 0,
	offsetY: 5,
	showTimeout: 100
});</pre>
			</div>

			<!-- #demo-form-subject -->
			<p>
				<label for="demo-form-subject">Subject:</label><br /> <input id="demo-form-subject" type="text" size="30" title="Enter a subject" />
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-form-subject').poshytip({
	className: 'tip-yellowsimple',
	showOn: 'focus',
	alignTo: 'target',
	alignX: 'center',
	alignY: 'bottom',
	offsetX: 0,
	offsetY: 5,
	showTimeout: 100
});</pre>
			</div>

			<h3 id="async-content">Asynchronous Loading of the Content</h3>

			<p>Poshy Tip supports using a function for returning the tooltip content and the script also passes an update callback function as an argument to this
				function. By using this callback, you can easily update asynchronously the content of the tooltip after it has been displayed. The script also recalculates
				and updates the position of the tooltip when its content is updated.</p>

			<h4 id="async-simple">Simple Example</h4>

			<!-- #demo-async-timeout -->
			<p>
				<a id="demo-async-timeout" href="#">Update content after 1 second</a>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-async-timeout').poshytip({
	content: function(updateCallback) {
		window.setTimeout(function() {
			updateCallback('Tooltip content updated!');
		}, 1000);
		return 'Loading...';
	}
});</pre>
			</div>

			<h4 id="async-flickr-feeds">Loading Flickr Feeds</h4>

			<p>A more complicated example of loading some Flickr images by tags:</p>

			<!-- #demo-async-flickr -->
			<p id="demo-async-flickr">
				<a rel="tag-flowers-closeup" href="#">flowers, closeup</a>, <a rel="tag-sunset" href="#">sunset</a>, <a rel="tag-architecture" href="#">architecture</a>, <a
					rel="tag-Plovdiv-old-town" href="#">Plovdiv, old, town</a>, <a rel="tag-Nesebar" href="#">Nesebar</a>, <a rel="tag-depeche" href="#">depeche</a>
			</p>


			<div class="code-block">
				<pre class="sh_javascript">var flickrFeedsCache = {};

$('#demo-async-flickr &gt; a').poshytip({
	className: 'tip-darkgray',
	bgImageFrameSize: 11,
	alignY: 'bottom',
	content: function(updateCallback) {
		var rel = $(this).attr('rel');
		if (flickrFeedsCache[rel] &amp;&amp; flickrFeedsCache[rel].container)
			return flickrFeedsCache[rel].container;
		if (!flickrFeedsCache[rel]) {
			flickrFeedsCache[rel] = { container: null };
			var tagsComma = rel.substring(4).replace('-', ',');
			$.getJSON('http://api.flickr.com/services/feeds/photos_public.gne?tags=' + tagsComma + '&amp;tagmode=all&amp;format=json&amp;jsoncallback=?',
				function(data) {
					var container = $('&lt;div/&gt;').addClass('flickr-thumbs');
					$.each(data.items, function(i, item) {
						$('&lt;a/&gt;')
							.attr('href', item.link)
							.append($('&lt;img/&gt;').attr('src', item.media.m))
							.appendTo(container)
							.data('tip', '&lt;strong&gt;' + (item.title || '(no title)') + '&lt;/strong&gt;&lt;br /&gt;by: ' + item.author.match(/\((.*)\)/)[1]);
						if (i == 4)
							return false;
					});
					// add tips for the images inside the main tip
					container.find('a').poshytip({
						content: function(){return $(this).data('tip');},
						className: 'tip-yellowsimple',
						showTimeout: 100,
						alignTo: 'target',
						alignX: 'center',
						alignY: 'bottom',
						offsetY: 5,
						allowTipHover: false,
						hideAniDuration: 0
					});
					// store the content in the cache
					// and call updateCallback() to update the content in the main tooltip
					updateCallback(flickrFeedsCache[rel].container = container);
				}
			);
		}
		return 'Loading images...';
	}
});</pre>
			</div>

			<h3 id="follow-cursor">Following the Mouse Cursor</h3>

			<p>
				If using the
				<code>followCursor: true</code>
				option, it's better to make sure the the slide animation effect is disabled (i.e.
				<code>slide: false</code>
				) so that it doesn't conflict with the code that moves the tooltip with the cursor.
			</p>

			<!-- #demo-follow-cursor -->
			<p>
				<a id="demo-follow-cursor" title="Hey, there! This is a tooltip." href="#">Hover for a tooltip that follows the cursor</a>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-follow-cursor').poshytip({
	followCursor: true,
	slide: false
});</pre>
			</div>

			<h3 id="manual-trigger">API Example - Triggering the Tooltip Manually</h3>

			<p>
				If you like, you can add a tooltip to some element(s) and configure it to not be triggered automatically on hover or focus/blur by using the
				<code>showOn: 'none'</code>
				option. You can then control the tooltip manually via the available methods.
			</p>

			<!-- #demo-manual-trigger -->
			<p>
				<a id="demo-manual-trigger" href="#">This link has a tooltip that is not triggered automatically</a>
			</p>
			<p>
				<button id="button-show">Show</button>
				<button id="button-show-delayed">Show in 2 sec.</button>
				<button id="button-hide">Hide</button>
				<button id="button-hide-delayed">Hide in 2 sec.</button>
				<button id="button-update">Update Content</button>
				<button id="button-disable">Disable</button>
				<button id="button-enable">Enable</button>
				<button id="button-destroy">Destroy</button>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-manual-trigger').poshytip({
	content: 'Hey, there! This is a tooltip.',
	showOn: 'none',
	alignTo: 'target',
	alignX: 'inner-left',
	offsetX: 0,
	offsetY: 5
});
$('#button-show').click(function() { $('#demo-manual-trigger').poshytip('show'); });
$('#button-show-delayed').click(function() { $('#demo-manual-trigger').poshytip('showDelayed', 2000); });
$('#button-hide').click(function() { $('#demo-manual-trigger').poshytip('hide'); });
$('#button-hide-delayed').click(function() { $('#demo-manual-trigger').poshytip('hideDelayed', 2000); });
$('#button-update').click(function() { $('#demo-manual-trigger').poshytip('update', 'I am a new content :)'); });
$('#button-disable').click(function() { $('#demo-manual-trigger').poshytip('disable'); });
$('#button-enable').click(function() { $('#demo-manual-trigger').poshytip('enable'); });
$('#button-destroy').click(function() { $('#demo-manual-trigger').poshytip('destroy'); });</pre>
			</div>

			<h3 id="live-events">Using Live Events</h3>

			<p>
				You can set the
				<code>liveEvents: true</code>
				option to use live events. Note that the API methods (except 'destroy') won't work reliably in such case. They will only work for the elements for which the
				tooltip has been initialized (i.e. shown at least once). Live events are supported in jQuery 1.4.2+.
			</p>

			<!-- #demo-live-events -->
			<p id="demo-live-events">
				<a title="Hey, there! This is a tooltip." href="#">Hover for a tooltip</a>
			</p>
			<p>
				<button id="button-live-events">Add Another Link</button>
			</p>
			<div class="code-block">
				<pre class="sh_javascript">$('#demo-live-events &gt; a').poshytip({
	liveEvents: true
});
$('#button-live-events').click(function() {
	$('#demo-live-events').append(', &lt;a title="Hey, there! This is a tooltip." href="#"&gt;Hover for a tooltip&lt;/a&gt;');
});</pre>
			</div>

			<h2 id="options">Options</h2>

			<dl class="options">
				<dt>
					<strong>content</strong> <i>String, DOM element, Function, jQuery</i>
				</dt>
				<dd>
					<div class="possible-values">
						Possible Values: <span>'[title]', 'string', element, function(updateCallback){...}, jQuery</span>
					</div>
					Content to display.
				</dd>

				<dt>
					<strong>className</strong> <i>String</i>
				</dt>
				<dd>Class for the tips.</dd>

				<dt>
					<strong>bgImageFrameSize</strong> <i>Number</i>
				</dt>
				<dd>Size in pixels for the background-image (if set in CSS) frame around the inner content of the tip.</dd>

				<dt>
					<strong>showTimeout</strong> <i>Number</i>
				</dt>
				<dd>Timeout before showing the tip (in milliseconds 1000 == 1 second).</dd>

				<dt>
					<strong>hideTimeout</strong> <i>Number</i>
				</dt>
				<dd>Timeout before hiding the tip.</dd>

				<dt>
					<strong>timeOnScreen</strong> <i>Number</i>
				</dt>
				<dd>How long the tip will be displayed before automatically hiding.</dd>

				<dt>
					<strong>showOn</strong> <i>String</i>
				</dt>
				<dd>
					<div class="possible-values">
						Possible Values: <span>'hover', 'focus', 'none'</span>
					</div>
					Handler for showing the tip. Use
					<code>'none'</code>
					if you would like to trigger the tooltip just manually (i.e. by calling the
					<code>'show'</code>
					and
					<code>'hide'</code>
					methods).
				</dd>

				<dt>
					<strong>liveEvents</strong> <i>Boolean</i>
				</dt>
				<dd>
					Use live events.<br /> <br />Note that the API methods (except 'destroy') won't work reliably when live events are used. They will only work for the
					elements for which the tooltip has been initialized (i.e. shown at least once). Live events are supported in jQuery 1.4.2+.
				</dd>

				<dt>
					<strong>alignTo</strong> <i>String</i>
				</dt>
				<dd>
					<div class="possible-values">
						Possible Values: <span>'cursor', 'target'</span>
					</div>
					Align/position the tip relative to
				</dd>

				<dt>
					<strong>alignX</strong> <i>String</i>
				</dt>
				<dd>
					<div class="possible-values">
						Possible Values: <span>'right', 'center', 'left', 'inner-left', 'inner-right'</span>
					</div>
					Horizontal alignment for the tip relative to the mouse cursor or the target element - values 'inner-*' matter if
					<code>alignTo:'target'</code>
				</dd>

				<dt>
					<strong>alignY</strong> <i>String</i>
				</dt>
				<dd>
					<div class="possible-values">
						Possible Values: <span>'bottom', 'center', 'top', 'inner-bottom', 'inner-top'</span>
					</div>
					Vertical alignment for the tip relative to the mouse cursor or the target element - values 'inner-*' matter if
					<code>alignTo:'target'</code>
				</dd>

				<dt>
					<strong>offsetX</strong> <i>Number</i>
				</dt>
				<dd>
					Offset X pixels from the default position - doesn't matter if
					<code>alignX:'center'</code>
				</dd>

				<dt>
					<strong>offsetY</strong> <i>Number</i>
				</dt>
				<dd>
					Offset Y pixels from the default position - doesn't matter if
					<code>alignY:'center'</code>
				</dd>

				<dt>
					<strong>keepInViewport</strong> <i>Boolean</i>
				</dt>
				<dd>Reposition the tooltip if needed to make sure it always appears inside the viewport.</dd>

				<dt>
					<strong>allowTipHover</strong> <i>Boolean</i>
				</dt>
				<dd>
					Allow hovering the tip without hiding it onmouseout of the target - matters only if
					<code>showOn:'hover'</code>
				</dd>

				<dt>
					<strong>followCursor</strong> <i>Boolean</i>
				</dt>
				<dd>
					If the tip should follow the cursor - matters only if
					<code>showOn:'hover'</code>
					and
					<code>alignTo:'cursor'</code>
				</dd>

				<dt>
					<strong>fade</strong> <i>Boolean</i>
				</dt>
				<dd>Use fade animation.</dd>

				<dt>
					<strong>slide</strong> <i>Boolean</i>
				</dt>
				<dd>Use slide animation.</dd>

				<dt>
					<strong>slideOffset</strong> <i>Number</i>
				</dt>
				<dd>Slide animation offset.</dd>

				<dt>
					<strong>showAniDuration</strong> <i>Number</i>
				</dt>
				<dd>Show animation duration.</dd>

				<dt>
					<strong>hideAniDuration</strong> <i>Number</i>
				</dt>
				<dd>Hide animation duration.</dd>

				<dt>
					<strong>refreshAniDuration</strong> <i>Number</i>
				</dt>
				<dd>Animation duration when updating the tooltip asynchronously.</dd>
			</dl>

			<h2 id="methods">Methods</h2>

			<dl class="options">
				<dt>
					<strong>.poshytip('show')</strong>
				</dt>
				<dd>
					Manually show the tooltip. Make sure the
					<code>alignTo</code>
					option is set to
					<code>'target'</code>
					in order the tooltip to be properly positioned when you trigger it.
				</dd>

				<dt>
					<strong>.poshytip('showDelayed', [ timeout ] )</strong>
				</dt>
				<dd>
					Manually show the tooltip with a delay. Make sure the
					<code>alignTo</code>
					option is set to
					<code>'target'</code>
					in order the tooltip to be properly positioned when you trigger it.
					<div class="signature">
						<strong>timeout</strong> (optional) number - Custom timeout in milliseconds. If not passed, the
						<code>showTimeout</code>
						option value is used by default.
					</div>
				</dd>

				<dt>
					<strong>.poshytip('hide')</strong>
				</dt>
				<dd>Manually hide the tooltip.</dd>

				<dt>
					<strong>.poshytip('hideDelayed', [ timeout ] )</strong>
				</dt>
				<dd>
					Manually hide the tooltip with a delay.
					<div class="signature">
						<strong>timeout</strong> (optional) number - Custom timeout in milliseconds. If not passed, the
						<code>hideTimeout</code>
						option value is used by default.
					</div>
				</dd>

				<dt>
					<strong>.poshytip('update', content, [ dontOverwriteOption ] )</strong>
				</dt>
				<dd>
					Update the tooltip content at any time.
					<div class="signature">
						<strong>content</strong> '[title]', 'string', element, function(updateCallback){...}, jQuery<br /> <strong>dontOverwriteOption</strong> (optional) A
						boolean flag - if set to
						<code>true</code>
						the content will be updated just temporary while the tooltip is active. The next time it is shown again, the default content will be used.
					</div>
					Examples:<br /> - Update content permanently (works even when the tooltip is not active):
					<div class="signature">.poshytip('update', 'New permanent content')</div>
					- Update content temporary while the tooltip is active:
					<div class="signature">.poshytip('update', 'Temporary content', true)</div>
				</dd>

				<dt>
					<strong>.poshytip('disable')</strong>
				</dt>
				<dd>Disable the tooltip.</dd>

				<dt>
					<strong>.poshytip('enable')</strong>
				</dt>
				<dd>Enable the tooltip.</dd>

				<dt>
					<strong>.poshytip('destroy')</strong>
				</dt>
				<dd>Destroy completely the tooltip functionality.</dd>
			</dl>

			<h2 id="notes">Notes</h2>

			<ul>
				<li>Requires jQuery 1.4+</li>
				<li>Works in IE6+, FF 2+, Opera 9+, Safari 3+, Chrome</li>
				<li>In IE6 min/max-width are supported (only px values) for the tooltip container DIV so you can use them in your CSS without worrying for IE6 (if you
					still care about it)</li>
				<li>When a background-image is set for the tooltip container DIV, the script will neglect the background-color/padding/border declarations set for it
					and will use the background image to create a scalable frame around the tooltip inner DIV (for an explanation how this works, please take a look at the <a
					href="http://vadikom.com/tools/poshy-tip-jquery-plugin-for-stylish-tooltips/">Poshy Tip Page</a>)
				</li>
				<li>In IE6 PNG background images are not supported (only GIF). If a PNG is set as a background-image for the tooltip container, in IE6 the script will
					fallback and use the background-color/padding/border declarations instead.</li>
			</ul>

			<h2 id="license">License</h2>

			<p>
				Like jQuery, Poshy Tip is dual licensed under the <a href="http://github.com/vadikom/poshytip/raw/master/MIT-LICENSE.txt">MIT</a> and <a
					href="http://github.com/vadikom/poshytip/raw/master/GPL-LICENSE.txt">GPL</a> licenses.
			</p>

			<h2 id="download">Download</h2>

			<p>
				Download link: <a href="http://vadikom.com/files/?file=poshytip/poshytip-1.2.zip">http://vadikom.com/files/?file=poshytip/poshytip-1.2.zip</a>
			</p>

			<h3>Git</h3>

			<p>The Poshy Tip source code is also available at GitHub:</p>
			<div class="code-block">
				<pre class="sh_html">git clone git://github.com/vadikom/poshytip.git</pre>
			</div>

			<h2 id="support">Support</h2>

			<p>
				Post your questions/suggestions in the <a href="http://www.smartmenus.org/forum/">support forums</a>.
			</p>

			<h2 id="donate">Donate</h2>

			<p>
				If you appreciate this script, you can support me by <a
					href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&amp;business=paypal@vadikom.com&amp;no_shipping=1&amp;currency_code=USD&amp;item_name=Poshy+Tip+jQuery+Plugin+Development"
					rel="nofollow">donating a small amount</a> through PayPal or just by <a
					href="http://www.addtoany.com/share_save?linkname=Poshy%20Tip%20-%20Tooltip%20Plugin%20for%20jQuery%20-%20Vadikom&amp;linkurl=http://vadikom.com/tools/poshy-tip-jquery-plugin-for-stylish-tooltips/"
					rel="nofollow">spreading the word</a> about it. Your support is highly appreciated!
			</p>
		</div>

	</div>

</body>
</html>