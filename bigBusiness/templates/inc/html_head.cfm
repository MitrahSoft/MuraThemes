<cfoutput>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="#HTMLEditFormat($.getMetaDesc())#" />
	<meta name="keywords" content="#HTMLEditFormat($.getMetaKeywords())#" />
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
	<cfif request.contentBean.getCredits() neq ""><meta name="author" content="#HTMLEditFormat($.content('credits'))#" /></cfif>
	<meta name="generator" content="Mura CMS #$.globalConfig('version')#" />
	<!--- <meta name="robots" content="noindex, nofollow" /> ---><!--- use this to discourage search engines from indexing your site. (can be useful if developing on a live server for example) Delete if not needed. --->
	<title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>

	<link rel="icon" href="#$.siteConfig('assetPath')#/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="#$.siteConfig('assetPath')#/images/favicon.ico" type="image/x-icon" />
	<meta content="#$.siteConfig('assetPath')#/images/favicon.ico" itemprop="image"/>
	
	<!--- shared js --->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
	
	<script type="text/javascript" src="#$.siteConfig('themeAssetPath')#/js/jquery-1.7.1.min.js"></script> 
	<script type="text/javascript" src="#$.siteConfig('themeAssetPath')#/js/jquery.dropotron-1.0.js"></script>
	<script type="text/javascript" src="#$.siteConfig('themeAssetPath')#/js/jquery.slidertron-1.1.js"></script>
	
	<!--- Shared Styles --->	
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/mura.min.css" type="text/css" media="all" /> 
	<!--- Theme-Specific Styles --->
	<!--- ** Optimized Method of CSS Inclusion ** --->
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/typography.css" type="text/css" media="all" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/style.css" type="text/css" media="all" />
	<!--- ** HTML5 compatibility code needs to be run before parsing dom. 
		  ** Other JS should be added with in the footer.cfm with $.static()	
	--->
	<!--[if lte IE 8]>
	<script src="#$.siteConfig('themeAssetPath')#/js/ie/lte8/html5.js" type="text/javascript" language="Javascript"></script>
	<![endif]-->

	<cfset rs=$.getBean('feedManager').getFeeds($.event('siteID'),'Local',true,true) />
	<cfloop query="rs">
	<link rel="alternate" type="application/rss+xml" title="#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat(rs.name)#" href="#XMLFormat('http://#listFirst(cgi.http_host,":")##$.globalConfig('context')#/tasks/feed/?feedID=#rs.feedID#')#" />
	</cfloop>
	
	
</head>
</cfoutput>