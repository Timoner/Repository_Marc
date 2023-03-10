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
              <th style="text-align:left">Artist</th>
            </tr>
            <xsl:for-each select="negocio/servicio">
            <tr>
              <td><xsl:value-of select="tipo"/></td>
              <td><xsl:value-of select="precio"/></td>
            </tr>
            </xsl:for-each>
          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
