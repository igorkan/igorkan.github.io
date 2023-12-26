<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:template match="/"> 
<html>
<head>
	<title>Courses (IK Personal Site)</title>
</head>
<body>
<div align="center"> 
<TABLE WIDTH="70%" border="0" align="center"><tr><td>
 <xsl:for-each select="coursesList/season">

  <P ><FONT size="6"><P align="left"><xsl:value-of select="name"/></P></FONT></P>
    <table CELLSPACING="15" border="0">
    <xsl:for-each select="location">  
    <tr>
     <td >
        <P>
        <xsl:element name="img">
        <xsl:attribute name="src"><xsl:value-of select="code/@img"/>
        </xsl:attribute>
        </xsl:element>  
        <br/><FONT size="2">(<xsl:value-of select="code/@name"/>)</FONT></P>
      <hr/>  
     </td>
     <td >
      <xsl:for-each select="course"> 
      <P><FONT size="5">
      <!-- <xsl:element name="a">
        <xsl:attribute name="href"><xsl:value-of select="url"/>
        </xsl:attribute> -->
        <xsl:value-of select="name"/>
       <!-- </xsl:element> -->
       </FONT></P>
      </xsl:for-each>
       
  </td></tr>
</xsl:for-each >
</table>

<HR SIZE="5"   />
</xsl:for-each>

</td></tr></TABLE>
</div>

</body>
</html>
</xsl:template>    
</xsl:stylesheet> 