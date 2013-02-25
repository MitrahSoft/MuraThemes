<cfoutput> 
		<div id="header">
			<div id="logo">
				<h1><a href="">Big Business 2.0</a></h1>
			</div>
		</div>
		<div id="menu">
			<cf_CacheOMatic key="dspPrimaryNav#request.contentBean.getcontentID()#">
			#$.dspPrimaryNav(
				viewDepth="3",
				id="navPrimary",  
				displayHome="Always",
				closePortals="false",
				showCurrentChildrenOnly="false"
				)#</cf_cacheomatic>
		</div> 
		
		<div id="slider">
		<div class="viewer">
			<div class="reel">
				<cfset feed=$.getBean("feed").loadBy(name="Home SlideShow",siteID=$.event("siteid"))>
				<cfset iterator=feed.getIterator()>
				<cfif iterator.hasNext()>
				  <cfloop condition="iterator.hasNext()">
				    <cfset item=iterator.next()>
					<diV class="slide">
						<img src="#$.createHREFForImage(item.getSiteID(),item.getFileID(),item.getFileEXT(),'large')#"/>	
					</diV>
				  </cfloop>
				</cfif>
			</div>
		</div><!---viewer  --->
		<div class="indicator">
			<cfset iterator=feed.getIterator()>
			 <cfif iterator.hasNext()>
                	<cfset slidenumber = 1>
				  <cfloop condition="iterator.hasNext()">
				    <cfset item=iterator.next()>
					<span>#slidenumber#</span>
	                <cfset slidenumber =slidenumber + 1> 
                </cfloop>
			</cfif>
		</div>
	</div>
	<script type="text/javascript">
	$(function() {
		$('##menu > ul').dropotron({
			mode: 'fade',
			globalOffsetY: 11,
			offsetY: -15
		});
		$('##slider').slidertron({
			viewerSelector: '.viewer',
			indicatorSelector: '.indicator span',
			reelSelector: '.reel',
			slidesSelector: '.slide',
			speed: 'slow',
			advanceDelay: 4000
		});
	});
</script>
</cfoutput>