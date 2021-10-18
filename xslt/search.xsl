<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" exclude-result-prefixes="xsl tei xs">
    <xsl:output encoding="UTF-8" media-type="text/html" method="xhtml" version="1.0" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:import href="./partials/html_navbar.xsl"/>
    <xsl:import href="./partials/html_head.xsl"/>
    <xsl:import href="partials/html_footer.xsl"/>
    <xsl:template match="/">
        <xsl:variable name="doc_title">
            <xsl:value-of select="'Document Search'"/>
        </xsl:variable>
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <xsl:call-template name="html_head">
                    <xsl:with-param name="html_title" select="$doc_title"></xsl:with-param>
                </xsl:call-template>
                <!--<script src="https://unpkg.com/arche-api@1.1.0-beta/lib/arche-api.min.js"/>-->
                <script src="js/arche-api.min.js"/>
            </head>
            <body class="page">
                <div class="hfeed site" id="page">
                    <xsl:call-template name="nav_bar"/>
                    
                    <div class="container-fluid">                        
                        <div class="card" style="margin-top: 1em; margin-bottom: 5em;">
                            <div class="card-header">
                                <h1><xsl:value-of select="$doc_title"/></h1>
                            </div>                                                          
                            <div class="card-body" id="staticSearch">
                            </div>                            
                        </div>                       
                    </div>
                    <xsl:call-template name="html_footer"/>
                </div>
            </body>
            <script type="text/javascript" src="js/autocomplete.js"></script>
        </html>
    </xsl:template>
    
</xsl:stylesheet>