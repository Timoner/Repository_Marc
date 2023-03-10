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
              <th style="text-align:left">Servicios</th>
              <th style="text-align:left">Precio</th>
              <th style="text-align:left">Bono</th>
              <th style="text-align:left">Limite de plazas</th>
              <th style="text-align:left">Horario</th>
              <th style="text-align:left">Empleado</th>

            </tr>
            <xsl:for-each select="negocio/servicio">
            <tr>
              <td><xsl:value-of select="tipo"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="bono"/></td>
              <td><xsl:value-of select="reserva"/></td>
              <td><xsl:value-of select="horarios"/></td>
              <td><xsl:value-of select="empleados"/>,</td>
            </tr>
            </xsl:for-each>

          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
