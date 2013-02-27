<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="home">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="inc/header.cfm" />
		<div id="content" class="clearfix">
		<section id="content"><div class="ic"></div>
			<div id="slide" class="box-shadow">		
	            <div class="slider">
	                <ul class="items">
	                    <cfset feed=$.getBean("feed").loadBy(name="Home SlideShow",siteID=$.event("siteid"))>
						<cfset iterator=feed.getIterator()>
						<cfif iterator.hasNext()>
					 		 <cfloop condition="iterator.hasNext()">
					   		 <cfset item=iterator.next()>
							<li>
								<img src="#$.createHREFForImage(item.getSiteID(),item.getFileID(),item.getFileEXT(),'large')#"/>
								<div class="banner"></div>	
							</li>
					 		 </cfloop>
						</cfif>
	                </ul>   
	            </div><!---  --->
	        </div>	
			<div id="page">
				<div id="primary" class="content">
					#$.dspBody(body=$.content('body'),pageTitle='',crumbList=0,showMetaImage=1)#
					#$.dspObjects(2)# 
				</div>
				<div id="right" class="sidebar">
					#$.dspObjects(4)#
				</div>
				
			</div><!--- page --->
		</section>
		
	</div>
	
</div>
<cfinclude template="inc/footer.cfm" />
</body>
</html>
</cfoutput>