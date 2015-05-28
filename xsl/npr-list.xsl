<?xml version="1.0" encoding="UTF-8"?>
<!-- NPR Listings -->

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:output method="html" indent="no"/>
  
  
  
  
  <xsl:template match="/">
    <html>
      <head>
        <title>NPR 
        <xsl:value-of select="/list/title"/></title>
      </head>
      <body>
<p>Use <code>e e</code> to invoke a custom URL executor to open program links.</p>
        <ol>
          <xsl:for-each select="//item">
<xsl:sort select="@num" data-type="number" order="descending"/>
<li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="@id"/>
        </xsl:attribute>
        <xsl:value-of select="title"/>
      </a>
      <xsl:value-of select="additionalInfo"/><br/>
<p>
      <strong>Story Counts:</strong>
      Today: <xsl:value-of select="num"/>
</p>
    </li>
          </xsl:for-each>

        </ol>
      </body>
    </html>
  </xsl:template>

  <xsl:template  match="item">
  </xsl:template>
  
</xsl:stylesheet>
