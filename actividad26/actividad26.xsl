<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/"
    version="1.0">
    <xsl:template match="/rss/channel">
        <html>
            <style>
            <head>
                <title>Actividad 26</title>
                 <link rel="stylesheet" href="actividad26.css"/>
            </head>

            <body >
                
                <header style="text-align:center">
                    <xsl:value-of select="title" />
                </header>
                <h3>
                    <xsl:value-of select="description" />
                    <br />

                    <html lang="es">
                        <xsl:value-of select="language" />
                    </html>
                    <br />
                    <a href="">
                        <xsl:value-of select="link" />
                    </a>
                    <br />
                    <xsl:value-of select="lastBuildDate" />
                </h3>


                <xsl:for-each select="item">
                    <a href="">
                        <xsl:value-of select="guid" />
                    </a>
                    <br />
                    <xsl:value-of
                        select="title" />
                    <br />
                    <xsl:value-of
                        select="pubDate" />
                    <br />
                    <a href="">
                        <xsl:value-of select="link" />
                    </a>
                    <br/>
                    <xsl:value-of
                        select="dc:creator" />
                    <br />
                    <xsl:value-of
                        select="dcterms:alternative" />
                    <br/>    
                    <xsl:value-of
                        select="description" />
                    <br />
                    <xsl:for-each select="category">
                        <xsl:value-of
                        select="." /> | 
                    </xsl:for-each>
                    <br/>    
                    <xsl:value-of
                        select="media:content" />
                    <br/>    
                    <xsl:value-of
                        select="media:credit" />
                    <br/>    
                    <xsl:value-of
                        select="media:title" />
                    <br/>    
                    <xsl:value-of
                        select="media:text" />
                    <br/>    
                    <xsl:value-of
                        select="media:description" />
                    <br/>
                

                </xsl:for-each>
            </body>
        </style>
        </html>
    </xsl:template>
</xsl:stylesheet>
      
