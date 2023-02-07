<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="factura">
        factura:
            id: <xsl:value-of select="@id"></xsl:value-of>
            factura:
                empresa: <xsl:value-of select="factura/factura/empresa"></xsl:value-of>
                id_CIF: <xsl:value-of select="factura/factura/direccion"></xsl:value-of>
                telef: <xsl:value-of select="factura/factura/telefono"></xsl:value-of>
                fax:   <xsl:value-of select="factura/factura/fax"></xsl:value-of>
                fecha: <xsl:value-of select="factura/factura/fecha"></xsl:value-of>
                pedido:<xsl:value-of select="factura/factura/pedido"></xsl:value-of>
                forma_pago: <xsl:value-of select="factura/factura/forma_pago"></xsl:value-of>

            datos_cliente: 

                n_cliente: <xsl:value-of select="datos_cliente/datos_cliente/n_cliente"></xsl:value-of> 
                nombre: <xsl:value-of select="datos_cliente/datos_cliente/nombre"></xsl:value-of>
                direccion: <xsl:value-of select="datos_cliente/datos_cliente/direccion"></xsl:value-of>
                poblacion: <xsl:value-of select="datos_cliente/datos_cliente/poblacion"></xsl:value-of>
                codigo_posatl: <xsl:value-of select="datos_cliente/datos_cliente/codigo_postal"></xsl:value-of>
                provincia: <xsl:value-of select="datos_cliente/datos_cliente/provincia"></xsl:value-of>

            datos_factura: 

                <xsl:for-each select="factura/datos_factura/datos">
                    Base_importe: <xsl:value-of select="Base_imponible/"></xsl:value-of>
    
                        REF: <xsl:value-of select="REF/"></xsl:value-of>
                        Desc: <xsl:value-of select="descripcion/"></xsl:value-of>
   
                    IVA: 
                       
                           cant: <xsl:value-of select="cant/"></xsl:value-of>
                           precio: <xsl:value-of select="precio/"></xsl:value-of>
                       
                    CUOTA_IVA: 
                       
                            iva: <xsl:value-of select="iva/"></xsl:value-of>
                            importe: <xsl:value-of select="importe/"></xsl:value-of>             
                      
                </xsl:for-each>
            Total factura: 

                <xsl:value-of select="@base imponible"></xsl:value-of>
                <xsl:value-of select="@IVA"></xsl:value-of>
                <xsl:value-of select="@Cuota I.V.A."></xsl:value-of>
                <xsl:value-of select="total_factura"></xsl:value-of>

    </xsl:template>
</xsl:stylesheet>