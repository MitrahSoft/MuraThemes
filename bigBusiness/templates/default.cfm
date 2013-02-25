<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="twoColSR depth#arrayLen($.event('crumbdata'))#">

<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<div id="wrapper">
	<cfinclude template="inc/header.cfm" />
		<div id="content" class="clearfix">
			<div id="page">
				<div id="primary" class="content">
					#$.dspBody(body=$.content('body'),pageTitle='',crumbList=0,showMetaImage=1)#
					#$.dspObjects(2)# 
				</div>
				<div id="right" class="sidebar">
					#$.dspObjects(3)#
				</div>
				
			</div>
		</div>
		<br class="clearfix"> 
		<div id="numberfour">
			#renderer.dspObjects(4)#
		</div>
	</div>
</div><!---  container --->

<cfinclude template="inc/footer.cfm" />
</body>
</html>
</cfoutput>
