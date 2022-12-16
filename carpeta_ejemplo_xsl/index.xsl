<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/"> 
<html>
    <head>
        <title>Mi libreria</title>
    </head>
<body>
    <h1>Mi librearia</h1>
    <table border="1px">
        <tr>
            <th>Autor</th>
            <th>Título</th>
            <th>Precio</th>
            <th>Fecha publicación</th>
        </tr>
        <xsl:for-each select="libreria/libro[titulo!='Todo Arde']">
            <xsl:sort select="autor"/>
            <xsl:if test="precio > 20">
                <tr>
                    <td>
                        <xsl:value-of select="autor"/>
                    </td>
                    <td>
                        <xsl:value-of select="titulo"/>
                    </td>
                    <td>
                        <xsl:value-of select="precio"/>
                    </td>
                    <td>
                        <xsl:value-of select="@fecha-publicacion"/>
                    </td>
                </tr>
            </xsl:if>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>