<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Consulta de productos</title>
      </head>
      <body>
        <h1>Consulta de productos</h1>
        <table border="1">
            <tr bgcolor="#9acd32">
              <th style="text-align:left"></th>
              <th style="text-align:left">Precio</th>
              <th style="text-align:left">Limite de plazas</th>
              <th style="text-align:left">Horario</th>
              <th style="text-align:left"></th>
            </tr>
            <xsl:for-each select="negocio/servicio">
            <tr>
              <td><xsl:value-of select="tipo"/></td>
              <td><xsl:value-of select="precio"/></td>
               <xsl:for-each select="negocio/servicio/precio">
                <xsl:value-of select="precio_Hora"/>
                <xsl:value-of select="bono_5"/>
                <xsl:value-of select="bono_10"/>
                </xsl:for-each>
              <td><xsl:value-of select="reserva"/></td>
              <td><xsl:value-of select="horarios"/></td>
            </tr>
            </xsl:for-each>
          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
