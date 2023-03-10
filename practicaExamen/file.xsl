<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Academia de baile</title>
      </head>
      <body>
        <h1>Clases de baile</h1>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Plazas disponibles</th>
            <th>Fecha de inicio</th>
            <th>Fecha de finalización</th>
            <th>Días de la semana</th>
            <th>Profesor/a</th>
            <th>Sala</th>
          </tr>
          <xsl:apply-templates select="//Baile"/>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="Baile">
    <tr>
      <td><xsl:value-of select="Nombre"/></td>
      <td><xsl:value-of select="concat(Precio,' ',Precio/@moneda)"/></td>
      <td><xsl:value-of select="PlazasDisponibles"/></td>
      <td><xsl:value-of select="FechaInicio"/></td>
      <td><xsl:value-of select="FechaFinalizacion"/></td>
      <td><xsl:value-of select="DiasSemana"/></td>
      <td><xsl:value-of select="Profesor"/></td>
      <td><xsl:value-of select="Sala"/></td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
