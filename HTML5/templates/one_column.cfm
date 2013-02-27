<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="oneCol depth#arrayLen($.event('crumbdata'))#">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="inc/header.cfm" />
	<div id="content" role="main" class="span12">
		<article class="page hentry">
			#$.dspBody(body=$.content('body'),pageTitle='',crumbList=0,showMetaImage=1)#
			#$.dspObjects(2)# 
		</article>
	</div><!--- content --->
</div><!--- container --->
<cfinclude template="inc/footer.cfm" />
</cfoutput>    