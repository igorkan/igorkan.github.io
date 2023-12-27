<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<!--
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
-->
	<xsl:template match="/">
		<html>
			<head>
				<title>Latest Publications by I.Kanovsky</title>
			</head>
			<body style="MARGIN-LEFT: 50px;MARGIN-RIGHT: 50px">
				<div align="center">
					<table>
						<tr> 
							<td>
								<img src="gifs/drK.gif" border="0" alt=""/>
							</td>
							<td>
								<img src="gifs/publication.gif" alt=""/>
							</td>
							<td>
								<img src="gifs/p6.gif" border="0" alt=""/>
							</td>
						</tr>
					</table>
				</div>
				<div align="center">
					<table>
						<tr>
							<td valign="top">
								<img src="gifs/line.gif" width="600" height="2" alt="" border="0"/>
								<br/>
							</td>
						</tr>
						<tr>
							<td valign="top" align="center">
								<img src="gifs/line.gif" width="600" height="2" alt="" border="0"/>
								<br/> <a href="index.html">(back to start page)</a>
							</td>
						</tr>
					</table>
				</div>
				<h2>
				Latest publications. <font size="+1">
						<a href="publication.xml">For full list click here.</a>
					</font>
				</h2>
				<ul>
				  <xsl:for-each select="//publications/Item">
				  <xsl:variable name="id" select="@refId"/>
				   <xsl:apply-templates select="document('publication.xml')//Pub_Item[Pub_ID/@val=$id]"/>
				   
				   </xsl:for-each>
				<!--
					<xsl:apply-templates select="document('publication.xml')//Pub_Item[Pub_ID/@latest]">
					 	<xsl:sort select="Yaer" order="ascending" data-type="number"/> 
					</xsl:apply-templates>
					-->
				</ul>
				<br/>
				<h2>
				Latest presentations. <!--<font size="+1"> <a href="publication.xml">For full list click hear.</a></font>-->
				</h2>
				<ul>
					<xsl:apply-templates select="//Item[ID/@latest]">
						<xsl:sort select="Year" order="descending" data-type="number"/>
					</xsl:apply-templates>
				</ul>
				<br/>
				<div align="center">
					<table>
						<tr>
							<td valign="bottom">
								<img src="gifs/line.gif" width="600" height="2" alt="" border="0"/>
							</td>
						</tr>
						<tr>
							<td valign="bottom">
								<img src="gifs/line.gif" width="600" height="2" alt="" border="0"/>
							</td>
						</tr>
					</table>
					<a href="index.html">(back to start page)</a>.<a href="#top">(back to top)</a>
				</div>
			</body>
		</html>
	</xsl:template>
	
	
	
	<xsl:template match="Item">
		<li>
			<xsl:for-each select="Author">
				<xsl:value-of select="."/>,
			</xsl:for-each>
			<b>
				<xsl:value-of select="Title"/>.
</b>
			<i>
				<xsl:value-of select="Location"/>.
</i>
             <xsl:if test="Date">
				<xsl:value-of select="Date"/>.
			</xsl:if>			
			<xsl:value-of select="Year"/>.
             
			<xsl:if test="Source">
				<xsl:for-each select="Source/item">
					<a>
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="comment"/>
					</a>.				
				</xsl:for-each>
			</xsl:if>
		</li>
		<br/>
	</xsl:template>
	
	
	
	<xsl:template match="Pub_Item">
		<li>
			<xsl:for-each select="Author">
				<xsl:value-of select="."/>,
			</xsl:for-each>
			<b>
				<xsl:value-of select="Title"/>.
</b>
			<i>
				<xsl:value-of select="Publisher"/>.
</i>
			<xsl:value-of select="Year"/>.
             <xsl:if test="V">
				<xsl:value-of select="V"/>.
			</xsl:if>
			<xsl:if test="N">
				<xsl:value-of select="N"/>.
			</xsl:if>
			<xsl:if test="Pages">
				<xsl:value-of select="Pages"/>.
			</xsl:if>
			<xsl:if test="Source">
				<xsl:for-each select="Source/item">
					<a>
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="comment"/>
					</a>.				
				</xsl:for-each>
			</xsl:if>
		</li>
		<br/>
	</xsl:template>
</xsl:stylesheet>
