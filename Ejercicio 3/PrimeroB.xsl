<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <body>
        <ol>
          <xsl:apply-templates select="catalogo/artistas/artista">
            <xsl:sort select="nombre" order="ascending"/>
          </xsl:apply-templates>
        </ol>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="artista">
    <li>
      <xsl:value-of select="nombre"/>
    </li>
  </xsl:template>
</xsl:stylesheet>
