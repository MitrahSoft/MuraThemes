<cfoutput>
<!DOCTYPE html>
<html>
<!-- Consider specifying the language of your content by adding the `lang` attribute to <html> -->
<!--[if lt IE 7]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
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
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	
	<script type="text/javascript" src="#$.siteConfig('themeAssetPath')#/js/jquery-1.7.2.min.js"></script> 
	<script type="text/javascript" src="#$.siteConfig('themeAssetPath')#/js/modernizr-2.6.1.min.js"></script>
	<script type="text/javascript" src="#$.siteConfig('themeAssetPath')#/js/script.js"></script>
	
	<!--- Shared Styles --->	
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/mura.min.css" type="text/css" media="all" /> 
	<!--- Theme-Specific Styles --->
	<!--- ** Optimized Method of CSS Inclusion ** --->
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/style.css" type="text/css" media="all" />
	
	<link href="//fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700|Merriweather:400,700,900" rel="stylesheet">
	
	
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