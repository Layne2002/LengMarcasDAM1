<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <body>
        <ol>
          <xsl:for-each select="catalogo/artistas/artista">
            <xsl:sort select="nombre" order="ascending"/>
            <li>
              <xsl:value-of select="nombre"/>
            </li>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
