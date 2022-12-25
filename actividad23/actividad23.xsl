<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table BORDER="1px">
                    <tr>Factura nº999</tr>
                    <xsl:for-each select="Factura/factura">
                    <tr>
                        <td><xsl:value-of select="empresa" /></td>
                        <td><xsl:value-of select="direccion" /></td>
                      </tr>   
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 