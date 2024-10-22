<xsl:template match="/">
  <autores_españoles>
    <xsl:apply-templates select="//artista[nacionalidad='España']"/>
  </autores_españoles>
</xsl:template>

<xsl:template match="cd">
  <cd>
    <xsl:value-of select="titulo"/>
    <xsl:choose>
      <xsl:when test="año &gt; 2000">
        <xsl:attribute name="color">green</xsl:attribute>
      </xsl:when>
      <xsl:otherwise>
        <xsl:attribute name="color">red</xsl:attribute>
      </xsl:otherwise>
    </xsl:choose>
  </cd>
</xsl:template>
