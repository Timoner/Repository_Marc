<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table border="1px">
                    <tr>
                        <th rowspan="2">Descripcion de cada hecho </th>
                        <th colspan="3">fecha</th>
                    </tr>
                    <tr>
                        <th>año</th>
                        <th>mes</th>
                        <th>dia</th>
                    </tr>
                    <xsl:for-each select="events/evento">

                        <tr>
                            <td>
                                <xsl:value-of select="@descripcion"/>
                            </td>
                            <xsl:for-each select="fecha">

                                <td>
                                    <xsl:value-of select="año" />
                                </td>
                                <td>
                                    <xsl:value-of select="mes" />
                                </td>
                                <td>
                                    <xsl:value-of select="dia" />
                                </td>

                            </xsl:for-each>

                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
