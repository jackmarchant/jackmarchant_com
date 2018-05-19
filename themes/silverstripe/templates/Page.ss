<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="google-site-verification" content="EO3T-WHyQ8WXDkzOKC4RJ03LGownYcF01LaXkvaKJ0w" />
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('style') %>
	<link rel="shortcut icon" href="themes/silverstripe/images/favicon.ico" />
</head>
<body>
	<% include Header %>
	<div id="main" role="main" class="container">
		$Layout
	</div>
	<% include Footer %>
	<% include Analytics %>
</body>
</html>
