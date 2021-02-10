<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>

<xsl:template match="/">
    <html>
        <head>
            <title>Dracula</title>
            <link rel="stylesheet" type="text/css" href="esterline_11-08_xslt_amnesty.css"/>
        </head>
        <body>
            <h1 class="center"><xsl:apply-templates select="descendant::title"/></h1>
            
            
            <table> 
                <tr>
                    <th>CHAPTERS
                    </th>
                    <th>LOCATIONS
                    </th>
                    <th>TECH
                    </th>
                </tr>
                <xsl:apply-templates select="descendant::chapter" mode="toc"/>
                              
            </table>
            
            <!--ebb: Reading view of the chapters here. -->
            <xsl:apply-templates select="descendant::chapter"/>
        </body>
    </html>
</xsl:template>
       
        <xsl:template match="chapter" mode="toc">
            <tr>
                <td><xsl:apply-templates select="heading"/></td>
                <td><xsl:value-of select="descendant::location=>distinct-values()=>string-join(' | ')"/></td>
                <td><xsl:value-of select="descendant::tech=>distinct-values()=>string-join(' | ')
                    "/></td>
            </tr>
        </xsl:template> 
        <xsl:template match="chapter">
            <h2><xsl:apply-templates select="heading"/></h2>
            <xsl:apply-templates select="p"/>
            
            
            
        </xsl:template>
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
        
    </xsl:template>
    <xsl:template match="location">
        <span class="location"><xsl:apply-templates/></span>
        
    </xsl:template>
    <xsl:template match="tech">
        <span class="tech"><xsl:apply-templates/></span>
        
    </xsl:template>
    
    
</xsl:stylesheet>