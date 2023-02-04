<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        factura:
            id: <xsl:value-of select="factura/@id"></xsl:value-of>
            factura:
                empresa: <xsl:value-of select="factura/factura/empresa"/>
                id_CIF: <xsl:value-of select="factura/factura/id_CIF"/>
                telef: <xsl:value-of select="factura/factura/telefono"/>
                fax:   <xsl:value-of select="factura/factura/fax"/>
                fecha: <xsl:value-of select="factura/factura/fecha"/>
                pedido:<xsl:value-of select="factura/factura/pedido"/>
                forma_pago: <xsl:value-of select="factura/factura/forma_pago"/>

            datos_cliente: 
            
                n_cliente: <xsl:value-of select="factura/datos_cliente/n_cliente"/> 
                nombre: <xsl:value-of select="factura/datos_cliente/nombre"/>
                direccion: <xsl:value-of select="factura/datos_cliente/direccion"/>
                poblacion: <xsl:value-of select="factura/datos_cliente/poblacion"/>
                codigo_posatl: <xsl:value-of select="factura/datos_cliente/codigo_postal"/>
                provincia: <xsl:value-of select="factura/datos_cliente/provincia"/>
           
            datos_factura: 

                datos: 
                    <xsl:for-each select="factura/datos_factura/datos">

                    Base de importe:
                        id: <xsl:value-of select="@cod"/>
                        REF:<xsl:value-of select="Base_imponible/REF"/>
                        descripcion:<xsl:value-of select="Base_imponible/descripcion"/>

                    IVA;
                        cant:   <xsl:value-of select="IVA/cant"/>
                        precio: <xsl:value-of select="IVA/precio"/>
                    
                    CUOTA_IVA:  
                    
                        iva:     <xsl:value-of select="CUOTA_IVA/iva"/>
                        importe: <xsl:value-of select="CUOTA_IVA/importe"/>
                    
                    </xsl:for-each>
            

    </xsl:template>
</xsl:stylesheet>