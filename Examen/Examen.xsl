<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Consulta de productos</title>
      </head>
      <body>
        <h1>Consulta de productos</h1>
        <p>Estimado cliente:</p>
        <p>Gracias por utilizar nuestros servicios. Aquí tiene la información de los productos que nos ha solicitado:</p>
        <table>
          <thead>
            <tr>
              <th>Nombre</th>
              <th>Precio</th>
              <th>Descripción</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="//producto">
              <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="precio"/></td>
                <td><xsl:value-of select="descripcion"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
        <p>No dude en contactarnos si necesita más información.</p>
        <p>Atentamente,</p>
        <p>El equipo de ventas</p>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
