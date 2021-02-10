<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Yellow Book of 3E 426</title>
                <link rel="stylesheet" type="text/css" href="css%20for%20test.css"/>
            </head>
            <body>
                <h1 style="center">Yellow Book</h1>
                
                
                <table> 
                    <tr>
                        <th>Location
                        </th>
                        <th>Group
                        </th>
                        <th>Person
                        </th>
                    </tr>
                    <xsl:apply-templates select="descendant::contents" mode="toc"/>
                    
                </table>
                
               
               
                <xsl:apply-templates select="//contents"/>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="contents" mode="toc">
        <tr>
            <td><xsl:value-of select="descendant::location=>distinct-values()=>string-join(' | ')"/></td>
            <td><xsl:value-of select="descendant::group=>distinct-values()=>string-join(' | ')"/></td>
            <td><xsl:value-of select="descendant::person=>distinct-values()=>string-join(' | ')"/></td>
        </tr>
    </xsl:template> 
    
    <xsl:template match="location">
        
        <span class="location">
        <xsl:if test="location='Vvardenfell'">
            <!--I dont think i used xsl:if completel right but if i put apply template inside it will make it a blank space -->
        </xsl:if>
            <xsl:apply-templates/>
        </span>
        
    </xsl:template>
  
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
</xsl:stylesheet>
