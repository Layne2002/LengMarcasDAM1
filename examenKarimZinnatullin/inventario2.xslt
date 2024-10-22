<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <body>
      <h1>Lista ordenada por peso</h1>
        <ol>
            <xsl:apply-templates select="//producto">
                <xsl:sort select="number(peso)" order="descending"/>
            </xsl:apply-templates>
        </ol>
      </body>
    </html>
  </xsl:template>
      <xsl:template match="producto">
        <li>
            <xsl:value-of select="nombre"/> Peso: <xsl:value-of select="peso"/> <xsl:value-of select="peso/@unidad"/>
        </li>
    </xsl:template>
</xsl:stylesheet>