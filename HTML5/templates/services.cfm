<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="home">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="inc/header.cfm" />
		<div id="content" role="main" class="span12">
			<article class="page hentry">
				<div id="page">
					<div id="primary" class="content">
						#$.dspBody(body=$.content('body'),pageTitle='',crumbList=0,showMetaImage=1)#
						#$.dspObjects(2)# 
					</div>
				</div><!--- page --->
			</article> <!--- .post.hentry --->
		</div><!--- content --->
</div><!--- container --->
<cfinclude template="inc/footer.cfm" />
</body>
</html>
</cfoutput> 