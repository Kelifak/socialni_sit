<?xml version='1.0' encoding='UTF-8' ?> 
<!-- was: <?xml version="1.0"?> -->

<!-- Odkaz na GitHub https://github.com/Kelifak/socialni_sit/blob/master/semestralka_Karim_Kelifa.xsd

    Document   : semestralka_Karim_Kelifa.xsl
    Created on : 26 April 2017, 19:50
    Author     : Karimek
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/socialni_sit">
        {
        "uzivatel":[
        
        <xsl:for-each select="ucet[nastaveni/obecne/pohlavi = 'zena'or nastaveni/obecne/pohlavi = 'Žena' or nastaveni/obecne/pohlavi = 'ŽENA']">
            <xsl:sort select="ucet/uzivatel/uzivatelske_Jmeno" order="descending"/>
            
            {
            "Přezdívka": "<xsl:value-of select="uzivatel/uzivatelske_jmeno" />",
            "Pohlavi": "<xsl:value-of select="nastaveni/obecne/pohlavi" />",
            "E-mail": "<xsl:value-of select="uzivatel/email" />",
            "Jazyk": "<xsl:value-of select="uzivatel/jazyk" />",
            "Prave Jmeno":"<xsl:value-of select="nastaveni/obecne/jmeno"/>",
            "Web": <xsl:choose><xsl:when test="nastaveni/obecne[web = 'none']">"nemá web"</xsl:when><xsl:otherwise>"<xsl:value-of select="nastaveni/obecne/web"/>"</xsl:otherwise>     
            </xsl:choose>
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]       
        }
    </xsl:template>
</xsl:stylesheet>
