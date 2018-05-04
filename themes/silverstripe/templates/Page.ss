<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('bundle') %>
	<link rel="shortcut icon" href="themes/silverstripe/images/favicon.ico" />
</head>
<body class="landing $ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
	<% include Header %>
	<% if URLSegment == 'home' %>
		<% include Banner %>
	<% end_if %>
	<div id="main" role="main" class="wrapper">
		$Layout
	</div>
	<% include Footer %>

	<% require themedJavascript('jquery.min') %>
	<% require themedJavascript('skel.min') %>
	<% require themedJavascript('util') %>
	<% require themedJavascript('main') %>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-53035029-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-53035029-1');
	</script>
</body>
</html>
