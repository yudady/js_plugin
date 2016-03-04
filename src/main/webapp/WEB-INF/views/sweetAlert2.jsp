<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!doctype html>

<head>
<title>SweetAlert2</title>


<script type="text/javascript" src="<s:url value="/resources/plugin/jquery/jquery-1.12.1.min.js" /> "></script>

<!-- This is what you need -->
<script type="text/javascript" src="<s:url value="/resources/plugin/sweetalert/sweetalert2-1.0.0/dist/sweetalert2.min.js" /> "></script>
<link rel="stylesheet" href="<s:url value="/resources/plugin/sweetalert/sweetalert2-1.0.0/dist/sweetalert2.css" /> " type="text/css" />
<!--.......................-->
</head>

<body>
	<header>
		<h1>
			Sweet<span>Alert</span>2
		</h1>
		<h2>A beautiful and customizable replacement for Javascript's "Alert"</h2>
		<button class="download">Download</button>
	</header>

	<h3>So... What does it do?</h3>
	<p>
		Here’s a comparison of a standard error message. The first one uses the built-in <strong>alert</strong>-function, while the second is using <strong>SweetAlert2</strong>.
	</p>

	<div class="showcase normal">
		<h4>Normal alert</h4>
		<button>Show error message</button>

		<h5>Code:</h5>
		<pre>
			<span class="func">alert</span>(<span class="str">'Oops... Something went wrong!'</span>)</pre>

		<div class="vs-icon"></div>
	</div>

	<div class="showcase sweet">
		<h4>
			Sweet<span>Alert</span>2
		</h4>
		<button>Show error message</button>

		<h5>Code:</h5>
		<pre>
sweetAlert(
  <span class="str">'Oops...'</span>,
  <span class="str">'Something went wrong!'</span>,
  <span class="str">'error'</span>
)</pre>
	</div>

	<p>Pretty cool huh? SweetAlert2 automatically centers itself on the page and looks great no matter if you're using a desktop computer, mobile or tablet.
		It's even highly customizeable, as you can see below!</p>


	<!-- Examples -->
	<h3>More examples</h3>

	<p class="center">
		In these examples, we're using the shorthand function <strong>swal</strong>.
	</p>

	<ul class="examples">

		<li class="message">
			<div class="ui">
				<p>A basic message</p>
				<button>Try me!</button>
			</div> <pre>swal(<span class="str">'Any fool can use a computer'</span>)</pre>
		</li>

		<li class="title-text">
			<div class="ui">
				<p>A title with a text under</p>
				<button>Try me!</button>
			</div> <pre>
swal(
  <span class="str">'The Internet?'</span>,
  <span class="str">'That thing is still around?'</span>
)</pre>
		</li>

		<li class="success">
			<div class="ui">
				<p>A success message!</p>
				<button>Try me!</button>
			</div> <pre>
swal(
  <span class="str">'Good job!'</span>,
  <span class="str">'You clicked the button!'</span>,
  <span class="str">'success'</span>
)</pre>
		</li>

		<li class="timer">
			<div class="ui">
				<p>A message with auto close timer</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  title: <span class="str">'Auto close alert!'</span>,
  text: <span class="str">'I will close in 2 seconds.'</span>,
  timer: <span class="str">2000</span>
})</pre>
		</li>

		<li class="html">
			<div class="ui">
				<p>Custom HTML description</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  title: <span class="str">'HTML example'</span>,
  html:
    <span class="str">'You can use &lt;b&gt;bold text&lt;/b&gt;, '</span> +
    <span class="str">'&lt;a href="//github.com"&gt;links&lt;/a&gt; '</span> +
    <span class="str">'and other HTML tags'</span>
})</pre>
		</li>

		<li class="html-jquery">
			<div class="ui">
				<p>jQuery HTML</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  title: <span class="str">'jQuery HTML example'</span>,
  html: $(<span class="str">'&lt;div&gt;'</span>)
    .addClass(<span class="str">'some-class'</span>)
    .text(<span class="str">'jQuery is everywhere.'</span>)
})</pre>
		</li>

		<li class="warning confirm">
			<div class="ui">
				<p>A warning message, with a function attached to the "Confirm"-button...</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  title: <span class="str">'Are you sure?'</span>,
  text: <span class="str">"You won't be able to revert this!"</span>,
  type: <span class="str">'warning'</span>,
  showCancelButton: <span class="val">true</span>,
  confirmButtonColor: <span class="str">'#3085d6'</span>,
  cancelButtonColor: <span class="str">'#d33'</span>,
  confirmButtonText: <span class="str">'Yes, delete it!'</span>,
  closeOnConfirm: <span class="val">false</span>
},
<span class="func"><i>function</i></span>() {
  swal(
    <span class="str">'Deleted!'</span>,
    <span class="str">'Your file has been deleted.'</span>,
    <span class="str">'success'</span>
  );
})</pre>
		</li>

		<li class="warning cancel">
			<div class="ui">
				<p>... and by passing a parameter, you can execute something else for "Cancel".</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  title: <span class="str">'Are you sure?'</span>,
  text: <span class="str">"You won't be able to revert this!"</span>,
  type: <span class="str">'warning'</span>,
  showCancelButton: <span class="val">true</span>,
  confirmButtonColor: <span class="str">'#3085d6'</span>,
  cancelButtonColor: <span class="str">'#d33'</span>,
  confirmButtonText: <span class="str">'Yes, delete it!'</span>,
  cancelButtonText: <span class="str">'No, cancel!'</span>,
  confirmButtonClass: <span class="str">'confirm-class'</span>,
  cancelButtonClass: <span class="str">'cancel-class'</span>,
  closeOnConfirm: <span class="val">false</span>,
  closeOnCancel: <span class="val">false</span>
},
<span class="func"><i>function</i></span>(isConfirm) {
  <span class="tag">if</span> (isConfirm) {
    swal(
      <span class="str">'Deleted!'</span>,
      <span class="str">'Your file has been deleted.'</span>,
      <span class="str">'success'</span>
    );
  } <span class="tag">else</span> {
    swal(
      <span class="str">'Cancelled'</span>,
      <span class="str">'Your imaginary file is safe :)'</span>,
      <span class="str">'error'</span>
    );
  }
})</pre>
		</li>

		<li class="custom-icon">
			<div class="ui">
				<p>A message with a custom icon and CSS animation disabled</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  title: <span class="str">'Sweet!'</span>,
  text: <span class="str">'Modal with a custom image.'</span>,
  imageUrl: <span class="str">'images/thumbs-up.jpg'</span>,
  animation: <span class="val">false</span>
})</pre>
		</li>

		<li class="custom-width-padding">
			<div class="ui">
				<p>A message with custom width, padding and background</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  text: <span class="str">'Custom width, padding, background.'</span>,
  width: <span class="val">300</span>,
  padding: <span class="val">100</span>,
  background: <span class="str">'url(http://goo.gl/jVlMUC)'</span>,
})</pre>
		</li>

		<li class="input-field">
			<div class="ui">
				<p>Modal window with input field</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  title: <span class="str">'Input something'</span>,
  html: <span class="str">'&lt;p&gt;&lt;input id="input-field"&gt;'</span>,
  showCancelButton: <span class="val">true</span>,
  closeOnConfirm: <span class="val">false</span>
},
<span class="func"><i>function</i></span>() {
  swal({
    html:
      <span class="str">'You entered: &lt;strong&gt;'</span> +
      $(<span class="str">'#input-field'</span>).val() +
      <span class="str">'&lt;/strong&gt;'</span>
  });
})</pre>
		</li>

		<li class="ajax-request">
			<div class="ui">
				<p>Ajax request example</p>
				<button>Try me!</button>
			</div> <pre>
swal({
  title: <span class="str">'Submit to run ajax request'</span>,
  showCancelButton: <span class="val">true</span>,
  confirmButtonText: <span class="str">'Submit'</span>,
  closeOnConfirm: <span class="val">false</span>
},
<span class="func"><i>function</i></span>() {
  swal.disableButtons();
  <span class="func">setTimeout</span>(<span class="func">function</span>() {
    swal(<span class="str">'Ajax request finished!'</span>);
  }, 2000);
})</pre>
		</li>
	</ul>


	<!-- Download & Install -->
	<h3 class="download-section">Download & install</h3>

	<div class="center-container">
		<p class="center">
			<b>Method 1:</b> Install through bower:
		</p>
		<pre class="center">$ bower install sweetalert2</pre>
	</div>

	<p class="center">
		<b>Method 2:</b> Download the sweetAlert2 <strong>CSS</strong> and <strong>JavaScript</strong> files.
	</p>

	<a class="button" href="https://github.com/limonte/sweetalert2/archive/master.zip" download>Download files</a>

	<ol>
		<li>
			<p>Initialize the plugin by referencing the necessary files:</p> <pre>&lt;<span class="tag">script</span> <span class="attr">src</span>=<span
					class="str">"dist/sweetalert2.min.js"</span>&gt;&lt;/<span class="tag">script</span>&gt;
&lt;<span class="tag">link</span> <span class="attr">rel</span>=<span class="str">"stylesheet"</span> <span class="tag">type</span>=<span class="str">"text/css"</span> <span
					class="tag">href</span>=<span class="str">"dist/sweetalert2.css"</span>&gt;</pre>
		</li>

		<li>
			<p>Call the sweetAlert2-function after the page has loaded</p> <pre>
swal({
  title: <span class="str">'Error!'</span>,
  text: <span class="str">'Do you want to continue'</span>,
  type: <span class="str">'error'</span>,
  confirmButtonText: <span class="str">'Cool'</span>
})</pre>
		</li>
	</ol>



	<!-- Configuration -->
	<h3>Configuration</h3>

	<p class="center">Here are the keys that you can use if you pass an object into sweetAlert2:</p>

	<table>
		<tr class="titles">
			<th>
				<div class="border-left"></div> Argument
			</th>
			<th>Default value</th>
			<th>
				<div class="border-right"></div> Description
			</th>
		</tr>
		<tr>
			<td><b>title</b></td>
			<td><i>null</i></td>
			<td>The title of the modal. It can either be added to the object under the key "title" or passed as the first parameter of the function.</td>
		</tr>
		<tr>
			<td><b>text</b></td>
			<td><i>null</i></td>
			<td>A description for the modal. It can either be added to the object under the key "text" or passed as the second parameter of the function.</td>
		</tr>
		<tr>
			<td><b>html</b></td>
			<td><i>null</i></td>
			<td>A HTML description for the modal. If "text" and "html" parameters are provided in the same time, "text" will be used.</td>
		</tr>
		<tr>
			<td><b>type</b></td>
			<td><i>null</i></td>
			<td>The type of the modal. SweetAlert2 comes with 4 built-in types which will show a corresponding icon animation: "<strong>warning</strong>", "<strong>error</strong>",
				"<strong>success</strong>" and "<strong>info"</strong>. It can either be put in the array under the key "type" or passed as the third parameter of the
				function.
			</td>
		</tr>
		<tr>
			<td><b>customClass</b></td>
			<td><i>null</i></td>
			<td>A custom CSS class for the modal. It can be added to the object under the key "customClass".</td>
		</tr>
		<tr>
			<td><b>animation</b></td>
			<td><i>true</i></td>
			<td>If set to <strong>false</strong>, modal CSS animation will be disabled.
			</td>
		</tr>
		<tr>
			<td><b>allowOutsideClick</b></td>
			<td><i>true</i></td>
			<td>If set to <strong>false</strong>, the user can't dismiss the modal by clicking outside it.
			</td>
		</tr>
		<tr>
			<td><b>allowEscapeKey</b></td>
			<td><i>true</i></td>
			<td>If set to <strong>true</strong>, the user can dismiss the modal by pressing the Escape key.
			</td>
		</tr>
		<tr>
			<td><b>showConfirmButton</b></td>
			<td><i>true</i></td>
			<td>If set to <strong>false</strong>, a "Confirm"-button will not be shown. It can be useful when you're using custom HTML description.
			</td>
		</tr>
		<tr>
			<td><b>showCancelButton</b></td>
			<td><i>false</i></td>
			<td>If set to <strong>true</strong>, a "Cancel"-button will be shown, which the user can click on to dismiss the modal.
			</td>
		</tr>
		<tr>
			<td><b>confirmButtonText</b></td>
			<td><i>"OK"</i></td>
			<td>Use this to change the text on the "Confirm"-button.</td>
		</tr>
		<tr>
			<td><b>cancelButtonText</b></td>
			<td><i>"Cancel"</i></td>
			<td>Use this to change the text on the "Cancel"-button.</td>
		</tr>
		<tr>
			<td><b>confirmButtonColor</b></td>
			<td><i>"#3085d6"</i></td>
			<td>Use this to change the background color of the "Confirm"-button (must be a HEX value).</td>
		</tr>
		<tr>
			<td><b>cancelButtonColor</b></td>
			<td><i>"#aaa"</i></td>
			<td>Use this to change the background color of the "Cancel"-button (must be a HEX value).</td>
		</tr>
		<tr>
			<td><b>confirmButtonClass</b></td>
			<td><i>null</i></td>
			<td>A custom CSS class for the confirm button.</td>
		</tr>
		<tr>
			<td><b>cancelButtonClass</b></td>
			<td><i>null</i></td>
			<td>A custom CSS class for the cancel button.</td>
		</tr>
		<tr>
			<td><b>closeOnConfirm</b></td>
			<td><i>true</i></td>
			<td>Set to <i>false</i> if you want the modal to stay open even if the user presses the "Confirm"-button. This is especially useful if the function
				attached to the "Confirm"-button is another SweetAlert2.
			</td>
		</tr>
		<tr>
			<td><b>imageUrl</b></td>
			<td><i>null</i></td>
			<td>Add a customized icon for the modal. Should contain a string with the path to the image.</td>
		</tr>
		<tr>
			<td><b>imageSize</b></td>
			<td><i>"80x80"</i></td>
			<td>If imageUrl is set, you can specify imageSize to describes how big you want the icon to be in px. Pass in a string with two values separated by an
				"x". The first value is the width, the second is the height.</td>
		</tr>
		<tr>
			<td><b>timer</b></td>
			<td><i>null</i></td>
			<td>Auto close timer of the modal. Set in ms (milliseconds).</td>
		</tr>
		<tr>
			<td><b>width</b></td>
			<td><i>500</i></td>
			<td>Modal window width, including paddings (<i>box-sizing: border-box</i>).
			</td>
		</tr>
		<tr>
			<td><b>padding</b></td>
			<td><i>20</i></td>
			<td>Modal window padding.</td>
		</tr>
		<tr>
			<td><b>background</b></td>
			<td><i>"#fff"</i></td>
			<td>Modal window background (CSS background property).</td>
		</tr>
	</table>


	<!-- Contribute -->
	<h3>Contribute</h3>
	<p class="center">
		Feel free to fork SweetAlert2 on <a href="https://github.com/limonte/sweetalert2" class="github">GitHub</a> if you have any features that you want to add!
	</p>


	<script>
		$('button.download').on('click', function() {
			$('html, body').animate({
				scrollTop : $('.download-section').offset().top
			}, 1000);
		});

		$('.showcase.normal button').on('click', function() {
			window.alert('Oops... Something went wrong!');
		});

		$('.showcase.sweet button').on('click', function() {
			swal('Oops...', 'Something went wrong!', 'error');
		});

		$('ul.examples li.message button').on('click', function() {
			swal('Any fool can use a computer');
		});

		$('ul.examples li.timer button').on('click', function() {
			swal({
				title : 'Auto close alert!',
				text : 'I will close in 2 seconds.',
				timer : 2000
			});
		});

		$('ul.examples li.html button').on(
				'click',
				function() {
					swal({
						title : 'HTML example',
						html : 'You can use <b>bold text</b>, '
								+ '<a href="//github.com">links</a> '
								+ 'and other HTML tags'
					});
				});

		$('ul.examples li.html-jquery button').on(
				'click',
				function() {
					swal({
						title : 'jQuery HTML example',
						html : $('<div>').addClass('some-class').text(
								'jQuery is everywhere.')
					});
				});

		$('ul.examples li.title-text button').on('click', function() {
			swal('The Internet?', 'That thing is still around?');
		});

		$('ul.examples li.success button').on('click', function() {
			swal('Good job!', 'You clicked the button!', 'success');
		});

		$('ul.examples li.warning.confirm button').on('click', function() {
			swal({
				title : 'Are you sure?',
				text : 'You will not be able to recover this imaginary file!',
				type : 'warning',
				showCancelButton : true,
				confirmButtonColor : '#3085d6',
				cancelButtonColor : '#d33',
				confirmButtonText : 'Yes, delete it!',
				closeOnConfirm : false
			}, function() {
				swal('Deleted!', 'Your file has been deleted!', 'success');
			});
		});

		$('ul.examples li.warning.cancel button')
				.on(
						'click',
						function() {
							swal(
									{
										title : 'Are you sure?',
										text : 'You will not be able to recover this imaginary file!',
										type : 'warning',
										showCancelButton : true,
										confirmButtonColor : '#3085d6',
										cancelButtonColor : '#d33',
										confirmButtonText : 'Yes, delete it!',
										cancelButtonText : 'No, cancel plx!',
										confirmButtonClass : 'confirm-class',
										cancelButtonClass : 'cancel-class',
										closeOnConfirm : false,
										closeOnCancel : false
									},
									function(isConfirm) {
										if (isConfirm) {
											swal(
													'Deleted!',
													'Your file has been deleted!',
													'success');
										} else {
											swal(
													'Cancelled',
													'Your imaginary file is safe :)',
													'error');
										}
									});
						});

		$('ul.examples li.custom-icon button').on('click', function() {
			swal({
				title : 'Sweet!',
				text : 'Modal with a custom image.',
				imageUrl : 'images/thumbs-up.jpg',
				animation : false
			});
		});

		$('ul.examples li.custom-width-padding button').on('click', function() {
			swal({
				title : 'Sweet!',
				text : 'Modal with custom width, padding and background.',
				width : 300,
				padding : 100,
				background : 'url(http://goo.gl/jVlMUC)'
			});
		});

		$('ul.examples li.input-field button').on(
				'click',
				function() {
					swal({
						title : 'Input something',
						html : '<input id="input-field">',
						showCancelButton : true,
						confirmButtonText : 'Submit',
						closeOnConfirm : false
					}, function() {
						swal({
							html : 'You entered: <strong>'
									+ $('#input-field').val() + '</strong>'
						});
					});
					$('#input-field').focus();
				});

		$('ul.examples li.ajax-request button').on('click', function() {
			swal({
				title : 'Submit to run ajax request',
				showCancelButton : true,
				confirmButtonText : 'Submit',
				closeOnConfirm : false
			}, function() {
				swal.disableButtons();
				setTimeout(function() {
					swal('Ajax request finished!');
				}, 2000);
			});
			$('#input-field').focus();
		});
	</script>
</body>
