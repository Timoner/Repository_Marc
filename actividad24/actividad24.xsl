<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <xsl:text>{</xsl:text>
        <xsl:apply-templates select="factura"/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="factura">
        <xsl:text>"factura": </xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:apply-templates select="factura"/>
        <xsl:text>},</xsl:text>
        <xsl:text>"datos_cliente": </xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:apply-templates select="datos_cliente"/>
        <xsl:text>},</xsl:text>
        <xsl:text>"datos_factura": </xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:apply-templates select="datos_factura"/>
        <xsl:text>},</xsl:text>
        <xsl:text>"TOTAL_FACTURA_PRECIO": </xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:apply-templates select="TOTAL_FACTURA_PRECIO"/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="factura/*">
        <xsl:text>"</xsl:text>
        <xsl:value-of select="name()"/>
        <xsl:text>": "</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>",</xsl:text>
    </xsl:template>

    <xsl:template match="datos_cliente/*">
        <xsl:text>"</xsl:text>
        <xsl:value-of select="name()"/>
        <xsl:text>": "</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>",</xsl:text>
    </xsl:template>

    <xsl:template match="datos_factura/*">
        <xsl:text>"</xsl:text>
        <xsl:value-of select="name()"/>
        <xsl:text>": </xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:apply-templates select="*"/>
        <xsl:text>},</xsl:text>
    </xsl:template>
   
</xsl:stylesheet>