<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="twoColSR depth#arrayLen($.event('crumbdata'))#">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="inc/header.cfm" />
	<div id="content" role="main" class="span7">
		<article class="page hentry">
			#$.dspObjects(2)# 
		</article>
	</div><!--- content --->
	<div id="sidebar" role="complementary" class="span4">
		#$.dspObjects(3)#
    </div>
</div>
<cfinclude template="inc/footer.cfm" />
</body>
</html>
</cfoutput>