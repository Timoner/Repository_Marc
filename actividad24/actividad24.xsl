<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text>{</xsl:text>
        <xsl:for-each select="ofertas/cd">
            <xsl:text>"</xsl:text>
            <xsl:value-of select="@titulo"/>
            <xsl:text>": {</xsl:text>
            <xsl:text>"artista": "</xsl:text>
            <xsl:value-of select="artista"/>
            <xsl:text>", "pais": "</xsl:text>
            <xsl:value-of select="pais"/>
            <xsl:text>", "compañia": "</xsl:text>
            <xsl:value-of select="compañia"/>
            <xsl:text>", "precio": "</xsl:text>
            <xsl:value-of select="precio"/>
            <xsl:text>", "año": "</xsl:text>
            <xsl:value-of select="año"/>
            <xsl:text>"}</xsl:text>
            <xsl:if test="position()!=last()">,</xsl:if>
        </xsl:for-each>
        <xsl:text>}</xsl:text>
    </xsl:template>
</xsl:stylesheet>
