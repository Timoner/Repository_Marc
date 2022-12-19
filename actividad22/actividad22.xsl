<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head></head>
    <body>
        <table BORDER="1px">
            <tr>
                <th colspan="6">CDs EN OFERTA</th>
            </tr>
            <tr>
                <th>Título</th>
                <th>Artista</th>
                <th>País</th>
                <th>Compañía discográfia</th>
                <th>Precio</th>
                <th>Año de publicación</th>
            </tr>
            <xsl:for-each select="oferta/cd">
                <tr>
                    <td>
                        <xsl:value-of select="cd" />
                    </td>

                    <td>
                        <xsl:value-of select="aritista" />
                    </td>

                    <td>
                        <xsl:value-of select="país" />
                    </td>

                    <td>
                        <xsl:value-of select="compañia" />
                    </td>

                    <td>
                        <xsl:value-of select="precio" />
                    </td>

                    <td>
                        <xsl:value-of select="año" />
                    </td>
                    
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>