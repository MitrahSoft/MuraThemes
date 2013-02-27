<cfoutput>
	<cfinclude template="inc/html_head.cfm" />
	<body id="#$.getTopID()#" class="twoColSR depth#arrayLen($.event('crumbdata'))#">
	<div id="container" class="#$.createCSSid($.content('menuTitle'))#"> 
		<div id="wrapper">
			<cfinclude template="inc/header.cfm" />
			<div id="content"  role="main" class="span7">
				#$.dspBody(body=$.content('body'),pageTitle='',crumbList=0,showMetaImage=1)#
				#$.dspObjects(1)# 
				#$.dspObjects(2)# 
				#$.dspObjects(4)# 
			</div><!--- content --->
			
			<div id="sidebar" role="complementary" class="span4">
				<form action="" id="searchForm" class="searchform" role="search">
					<label class="assistive-text" for="s">Search for:</label>
					<input type="search" placeholder="Search..." value="" onclick="this.value='';" onblur="if(this.value==''){this.value='';}" class="text" name="keywords"/>
					<input type="submit"  value="Search" class="submit" />
					<input type="hidden" name="display" value="search"/>
					<input type="hidden" name="newSearch" value="true"/>
					<input type="hidden" name="noCache" value="1"/>
				</form> 
				<div id="numberfour">
					#renderer.dspObjects(3)#
				</div>
			</div><!--- sidebar --->
		</div><!--- wrapper --->
	</div><!---  container --->
	
	<cfinclude template="inc/footer.cfm" />
</cfoutput>
