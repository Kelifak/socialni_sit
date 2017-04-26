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
        
        <xsl:for-each select="ucet">
            <xsl:sort select="ucet/uzivatel/uzivatelske_Jmeno" order="descending"/>
            
            {
            "Přezdívka": "<xsl:value-of select="uzivatel/uzivatelske_jmeno" />",
            "E-mail": "<xsl:value-of select="uzivatel/email" />",
            "Jazyk": "<xsl:value-of select="uzivatel/jazyk" />"
            "-------Nastavení tohoto uživatele-----",
            "Prave Jmeno":"<xsl:value-of select="nastaveni/obecne/jmeno"/>",
            "Web": "<xsl:value-of select="nastaveni/obecne/web"/>",
            "Pohlavi": "<xsl:value-of select="nastaveni/obecne/pohlavi" />",             
                    
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]        
        }
    </xsl:template>

</xsl:stylesheet>
