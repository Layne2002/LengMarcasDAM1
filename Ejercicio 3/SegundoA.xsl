<xsl:template match="/">
  <autores_españoles>
    <xsl:for-each select="//artista[nacionalidad='España']">
      <autor>
        <xsl:value-of select="nombre"/>
      </autor>
    </xsl:for-each>
  </autores_españoles>
  <discos>
    <xsl:for-each select="//cd">
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
    </xsl:for-each>
  </discos>
</xsl:template>
