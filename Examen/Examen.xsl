<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Consulta de productos</title>
      </head>
      <body>
        <h1>Consulta de productos</h1>
        <table>
          <tr>
            <th>Producto</th>
            <th>Descripción</th>
            <th>Precio</th>
          </tr>
          <xsl:for-each select="productos/producto">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="descripcion"/></td>
              <td><xsl:value-of select="precio"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
