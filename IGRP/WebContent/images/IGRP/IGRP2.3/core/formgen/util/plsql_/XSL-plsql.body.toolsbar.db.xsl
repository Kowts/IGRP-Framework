<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     <xsl:preserve-space elements="*"/>
    <!-- Generate TOOLBAR GROUP-->
    <xsl:template name="genDbBodyToolsbar">
        <xsl:param name="title" />
        <xsl:param name="app" />        
        <xsl:param name="page" />
        <xsl:param name="action" /> 
        
        <xsl:variable name="code_action">
            <xsl:call-template name="sanitizeToolbar">
                <xsl:with-param name="title" select="$title"/>
                <xsl:with-param name="selfaction" select="$selfaction"/>
                <xsl:with-param name="page" select="$page"/>
                <xsl:with-param name="action" select="$action"/>
            </xsl:call-template>
        </xsl:variable>
        
        
        <xsl:variable name="procName" select="concat('dml_',$code_action)" />
        
        <xsl:value-of select="$enter"/>
        <xsl:value-of select="$enter"/> 
        <xsl:value-of select="$entertab"/><xsl:text>-----</xsl:text>
        <xsl:value-of  select="$procName"/>:<xsl:value-of select="$title"/>
        <xsl:text>(</xsl:text>
        <xsl:value-of select="$app"/>
        <xsl:text> - </xsl:text>        
        <xsl:value-of select="$page"/>
        <xsl:text> - </xsl:text>
        <xsl:value-of select="$action"/>
        <xsl:text>)</xsl:text>
        
        <xsl:call-template name="genProcedureCab">
            <xsl:with-param name="procedureName" select="$procName"/>
            <xsl:with-param name="params" select="concat(concat(concat('p_page',$space,'OUT',$space,'VARCHAR2,',$space),concat('p_action',$space,'OUT',$space,'VARCHAR2,',$space)),concat('p_app',$space,'OUT',$space,'VARCHAR2'))"/>            
        </xsl:call-template> 
               
        <xsl:value-of select="$entertab"/>
        <xsl:text>BEGIN</xsl:text>
        
        <xsl:call-template name="genComment">
            <xsl:with-param name="comment" select="'TODO: put your code here'"/>
        </xsl:call-template>
        
        
        <xsl:value-of select="$enter"/>
        <xsl:value-of select="$enter2tab"/>
        <xsl:value-of select="concat($pkg_core,'.set_action','(p_action=>',$quotes,$title,$quotes,')')"/>        
        <xsl:value-of select="$endline"/>
        
        <xsl:value-of select="$enter"/>
        <xsl:value-of select="$enter2tab"/>
        <xsl:value-of select="concat('p_app',':=',$quotes,$app,$quotes)"/>        
        <xsl:value-of select="$endline"/>
        
        <xsl:value-of select="$enter"/>
        <xsl:value-of select="$enter2tab"/>
        <xsl:value-of select="concat('p_page',':=',$quotes,$page,$quotes)"/>        
        <xsl:value-of select="$endline"/>
        
        <xsl:value-of select="$enter"/>
        <xsl:value-of select="$enter2tab"/>
        <xsl:value-of select="concat('p_action',':=',$quotes,$action,$quotes)"/>        
        <xsl:value-of select="$endline"/>
                
        <xsl:call-template name="genProcedureEndCab">
            <xsl:with-param name="procedureName" select="$procName"/>
            <xsl:with-param name="preserve" select="'true'"/>
        </xsl:call-template>
        
    </xsl:template>
    
    
   
</xsl:stylesheet>