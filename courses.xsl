<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:template match="/"> 
<html>
<head>
	<title>Courses (IK Personal Site)</title>
  <style>
  div#test{text-align: center;}
  </style>
</head>
<body>
<div id="test">
 <!-- ===== header==== -->
      <div align="center">
        <table>
          <tr>
            <td align="right"><img alt="" border="0" src="gifs/drk.gif" /></td>
            <td><img alt="" border="0" src="gifs/courses.gif" /></td> 
            <td align="left"><img src="gifs/p4.gif" /></td>
          </tr>
          <tr>
            <td valign="top" colspan="3">
              <img
                alt=""
                border="0"
                height="1"
                src="gifs/line.gif"
                width="600"
              />
            </td>
          </tr>
          <tr>
            <td colspan="3" align="center" >
              <a href="index.html">(back to start page)</a>
            </td>
          </tr>
        </table>
      </div>
      <!-- ========= end of header========== -->
<H1>Testimonies</H1>
<a href="testimonies.html"><h2>My students about my courses (in hebrew)</h2></a>
</div>
<div align="center">
 <h1>List of Courses </h1>
</div>

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
<div align="center">
      <table align="center" width="600">
        <tr>
          <td valign="top">
            <img alt="" border="0" height="1" src="gifs/line.gif" width="600" />
            <img alt="" border="0" height="1" src="gifs/line.gif" width="600" />
          </td>
        </tr>
      </table>
      <a href="#top">(back to top)</a>
      <a href="index.html">(back to start page)</a>
    </div>
</body>
</html>
</xsl:template>    
</xsl:stylesheet> 