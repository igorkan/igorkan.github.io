<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<!--
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
-->
	<xsl:template match="/">
		<html>
			<head>
				<title>Publications by I.Kanovsky</title>
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
								
								</td>
						</tr>
						<tr>
							<td valign="top" align="center">
								<img src="gifs/line.gif" width="600" height="2" alt="" border="0"/><br/>
								<a href="latest_publication.xml" >(back to short list)</a> . 
								<a href="index.html">(back to start page)</a><br/>
						</td>
						</tr>
					</table>
				</div>
				<xsl:apply-templates select="Pub_List/Area"/>
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
					<a href="latest_publication.xml" >(back to short list)</a> . <a href="default.htm">(back to start page)</a>.
					<a href="#top">(back to top)</a>

				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="Area">
		<font size="5" style="COLOR: darkgreen;TEXT-DECORATION: underline">
			<xsl:value-of select="Type"/>
		</font>
		<br/>
		<ol>
			<xsl:apply-templates select="Pub_Item"/>
		</ol>
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
			<!-- -->
			<xsl:value-of select="Year"/>.
<xsl:if test="V"><xsl:value-of select="V"/>.</xsl:if>
<xsl:if test="N"><xsl:value-of select="N"/>.</xsl:if>
<xsl:if test="Pages"><xsl:value-of select="Pages"/>.</xsl:if>
</li>
		<br/>
	</xsl:template>
</xsl:stylesheet>
