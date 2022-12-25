<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table BORDER="1px">
                    <tr>
                        <th colspan="6">Factura n.999</th>
                    </tr>
                    <xsl:for-each select="Factura/factura">
                        <tr>
                            <td colspan="3">
                                <xsl:value-of select="nombre" />
                                <br />
                                <xsl:value-of select="direccion" />
                                <br />
                                <xsl:value-of select="n_CIF" />
                                <br />
                                <xsl:value-of select="telefono" />
                                <br />
                                <xsl:value-of select="fax" />
                                <br />

                            </td>
                            <td colspan="3">
                                <xsl:value-of select="fecha" />
                                <br />
                                <xsl:value-of select="@id" />
                                <br />
                                <xsl:value-of select="forma_de_pago" />
                                <br />
                            </td>
                        </tr>

                        <tr>
                            <th colspan="6">Datos Cliente</th>
                        </tr>
                        <xsl:for-each select="/Factura/datos_cliente">
                            <tr>
                                <td colspan="6">
                                    <xsl:value-of select="numero_cliente" />
                                    <br />
                                    <xsl:value-of select="nombre" />
                                    <br />
                                    <xsl:value-of select="direccion" />
                                    <br />
                                    <xsl:value-of select="poblacion" />
                                    <br />
                                    <xsl:value-of select="codigo_postal" />
                                    <br />
                                    <xsl:value-of select="provincia" />
                                    <br />
                                </td>
                            </tr>

                            <tr>
                                <th colspan="6">Datos Factura</th>
                            </tr>

                            <tr>
                                <th>REF</th>
                                <th>Descripción</th>
                                <th>Cantidad</th>
                                <th>Precio</th>
                                <th>IVA</th>
                                <th>Importe</th>
                            </tr>
                            <xsl:for-each select="/Factura/datos_factura/productos">
                                <tr>
                                    <td>
                                        <xsl:value-of select="n_REF" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="descripcion" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="cantidad" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="precio" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="iva" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="importe" />
                                    </td>
                                </tr>

                            </xsl:for-each>
                            <tr>
                                <th colspan="2">Base_imponible</th>
                                <th colspan="2">cant_IVA</th>
                                <th colspan="2">Cuota_IVA</th>
                            </tr>
                            <xsl:for-each select="/Factura/datos_factura">
                                <tr>
                                    <td colspan="2">
                                        <xsl:value-of select="base_imponible" />
                                    </td>
                                    <td colspan="2">
                                        <xsl:value-of select="cant_iva" />
                                    </td>
                                    <td colspan="2">
                                        <xsl:value-of select="cuota_iva" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <center>
                                            <xsl:value-of select="total_factura" />
                                        </center>
                                    </td>
                                </tr>

                            </xsl:for-each>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 