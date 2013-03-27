<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities SYSTEM "entities.dtd">
    %entities;
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    
    <!-- ul templates -->
    <xsl:template match="ul" mode="topLevel">   
        <xsl:param name="class"></xsl:param>
        <xsl:copy>
            <xsl:attribute name="class">
                <xsl:value-of select="$class"/>
            </xsl:attribute>
            <xsl:apply-templates select="li"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="ul" mode="links">
        <xsl:copy-of select="*"/>
    </xsl:template>
    
    <!-- li templates -->
    <xsl:template match="li[child::ul]">
        <xsl:copy>
            <xsl:attribute name="class">nav-header</xsl:attribute>
            <xsl:copy-of select="text()"/>
            <xsl:apply-templates select="ul" mode="links"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="li[child::hr]">
        <li class="divider"></li>
    </xsl:template>

    <xsl:template match="li">
        <xsl:copy-of select="."/>
    </xsl:template>
 
</xsl:stylesheet>