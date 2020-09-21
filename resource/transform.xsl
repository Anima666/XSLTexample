<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Books</title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="books">
    <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="book">
    <p>
      <b>
      <xsl:value-of select="title" />
      </b>
    </p>
    <p>
      <img>
        <xsl:attribute name="src">
          <xsl:value-of select="image"/>
        </xsl:attribute>
        <xsl:attribute name="style">float:left;width:128px;height:128px;margin-right:10px;</xsl:attribute >
      </img>
      <p>
        <xsl:value-of select="author" />
      </p>
      <p>
        <xsl:value-of select="genre" />
      </p>
      <p>
        <xsl:value-of select="price" />
      </p>
      <p>
        <xsl:value-of select="publish_date" />
      </p>
       <p>
         <xsl:value-of select="description" />
       </p>
    </p>
  </xsl:template>
</xsl:stylesheet>