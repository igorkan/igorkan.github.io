<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">

	<xsl:template match="/">
		<html>
			<head>
				<title>Links, stuff, events of Igor Kanovsky</title>
				<style type="text/css">
		
		.item1{
		   background-color:#DDDDDD;
		   border-style: solid;
		   border-width:1px;
		   padding-left: 20px;
		   padding-right: 20px;
		   padding-top: 5;
		    padding-bottom:5px;
		   margin-top: 20px; 
		   text-align: left;
		   
		}
		.item2{
		    background-color:#AAAAAA  ;
		    border-style: solid;
		   border-width:1px;
		   padding-left: 20px;
		   padding-right: 20px;
		   padding-top: 5;
		    padding-bottom:5px;
		   margin-top: 20px; 
		   text-align: left;
		}
		.title1{
		 font-family: "Comic Sans MS";
		 font-size: 16pt; 
		   
		}
		.date1{
		 font-family: sans-serif; ;
		 font-size: 12pt; 
		   
		}
		</style>
			</head>

			<body style="MARGIN-LEFT: 150px;MARGIN-RIGHT: 150px">
				<div align="center">
				<h2>Events and Links.</h2>
					<table>
						<tr>
							<td valign="bottom">
								<img src="LINE.GIF" width="600" height="2" alt="" border="0" />
							</td>
						</tr>
						<tr>
							<td valign="bottom">
								<img src="LINE.GIF" width="600" height="2" alt="" border="0" />
							</td>
						</tr>
					</table>

					<a href="index.html">(back to start page)</a>

					<div>
						<xsl:apply-templates select="//Area"/>
					</div>
					<table>
						<tr>
							<td valign="bottom">
								<img src="LINE.GIF" width="600" height="2" alt="" border="0" />
							</td>
						</tr>
						<tr>
							<td valign="bottom">
								<img src="LINE.GIF" width="600" height="2" alt="" border="0" />
							</td>
						</tr>
					</table>
					<a href="default.htm">(back to start page)</a>
					.
					<a href="#top">(back to top)</a>
				</div>
			</body>
		</html>
	</xsl:template>
	
    <xsl:template match="Area">
      <h2 class="title1"> <xsl:value-of select="Type"/></h2>
      <xsl:variable name="x"><xsl:value-of select="concat('item',position() )"/></xsl:variable>
       
    	<xsl:apply-templates select="Item">
        	   <xsl:with-param name="cl"><xsl:value-of select="$x"/></xsl:with-param> 
    	</xsl:apply-templates>
    	<br/>
    	
    </xsl:template>


	<xsl:template match="Item" >
	 <xsl:param name="cl">item1</xsl:param>
	    
		<div >
		 <xsl:attribute name="class">  <xsl:value-of select="$cl"/>   </xsl:attribute>

			<div class="title1">
				<xsl:value-of select="Name" /> <span class="date1"> (<xsl:value-of select="Date"/>)</span>
			</div>

			<i>
				<xsl:value-of select="What" />
				
			</i>


			<xsl:if test="Source">
				<xsl:for-each select="Source">
					<a>
						<xsl:attribute name="href"><xsl:value-of select="Link" /></xsl:attribute>
						<xsl:value-of select="Descripton" />
					</a><xsl:text> </xsl:text>
		
				</xsl:for-each>
			</xsl:if>

		</div>
		<br />
	</xsl:template>




</xsl:stylesheet>
