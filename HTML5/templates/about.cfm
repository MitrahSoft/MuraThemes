<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="home">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="inc/header.cfm" />
		<div id="content" class="clearfix">
		<section id="content"><div class="ic"></div>
			<div id="page">
				<div id="primary" class="content">
					#$.dspBody(body=$.content('body'),pageTitle='',crumbList=0,showMetaImage=1)#
					#$.dspObjects(2)# 
				</div>
				<!---<div id="right" class="sidebar">
					#$.dspObjects(4)#
				</div>--->
				
			</div><!--- page --->
		</section><!--- section --->
		
	</div>
	
</div><!--- container --->
<cfinclude template="inc/footer.cfm" />
</body>
</html>
</cfoutput> 