<cfoutput> 
<html>

<body>
	<header id="master-header" class="clearfix" role="banner">
		<hgroup>
			<h1 id="site-title"><a href="index.cfm" title="Your Site Name">MitrahSoft</a></h1>
			<h2 id="site-description">Web-Application, Mobile, jQuery Development</h2>
		</hgroup>
		<p>Beyond eXpectation</p>
	</header> <!--- master-header ---> 
	<div id="main" class="row clearfix">
		<nav class="main-navigation clearfix span12" role="navigation">
		<h3 class="assistive-text">Main menu</h3>
		<ul>
			<cf_CacheOMatic key="dspPrimaryNav#request.contentBean.getcontentID()#">
				#$.dspPrimaryNav(
					viewDepth="2",
					id="navPrimary",  
					displayHome="Always",
					closePortals="false",
					showCurrentChildrenOnly="false"
					)#</cf_cacheomatic>
		</ul>
	</nav> <!--- #main-navigation --->
<!--- Content here  --->
<script type="text/javascript">
	$(function() {
		$('ul##navPrimary li ul').addClass('sub-menu');
	});
</script>
</cfoutput>
