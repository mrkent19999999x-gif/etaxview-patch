<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:template name="tokenizeString">
<xsl:param name="list"/>
<xsl:param name="delimiter"/>
<xsl:param name="index"/>
<xsl:choose>
    <xsl:when test="contains($list, $delimiter)">      
        <xsl:variable name="listLength" select="string-length($list)" />
        <xsl:variable name="listLengthWithoutDelimiters" select="string-length(translate($list, $delimiter,''))" />
        <xsl:variable name="noOfDelimiters" select="($listLength - $listLengthWithoutDelimiters)" />
        <xsl:if test="$index = 3">
			<xsl:if test="$noOfDelimiters = 3">
				<xsl:value-of select="substring-before($list,$delimiter)"/>
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 2">
				
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 1">
			</xsl:if>
        </xsl:if>
      <xsl:if test="$index = 2">
			<xsl:if test="$noOfDelimiters = 3">
				
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 2">
				<xsl:value-of select="substring-before($list,$delimiter)"/>
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 1">
			</xsl:if>
        </xsl:if>
        <xsl:if test="$index = 1">
			<xsl:if test="$noOfDelimiters = 3">
				
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 2">
				
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 1">
				<xsl:value-of select="substring-before($list,$delimiter)"/>
			</xsl:if>
			 
        </xsl:if>
       <xsl:if test="$index = 0">
		   <xsl:if test="$noOfDelimiters = 3">
					
				</xsl:if>
				<xsl:if test="$noOfDelimiters = 2">
					
				</xsl:if>
				<xsl:if test="$noOfDelimiters = 1">
						<xsl:value-of select="substring-after($list,$delimiter)"/>
				</xsl:if>
			

					 
				</xsl:if>
       <!-- <xsl:if test="$noOfDelimiters >= 1">, </xsl:if>-->
        <xsl:call-template name="tokenizeString">
            <xsl:with-param name="list" select="substring-after($list,$delimiter)"/>
            <xsl:with-param name="delimiter" select="$delimiter"/>
             <xsl:with-param name="index" select="$index"/>
        </xsl:call-template>
    </xsl:when>
     <xsl:otherwise>
        <xsl:choose>
            <xsl:when test="$list = ''">
                <xsl:text/>
            </xsl:when>
            <!--<xsl:otherwise>
                 <xsl:value-of select="$list"/>
            </xsl:otherwise>-->
        </xsl:choose>
    </xsl:otherwise>
</xsl:choose>
</xsl:template>

	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeaderGH">
		 
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>  

   
<div class="ndungtkhai_div">
<div class="content">
<div class="align-l"><b>[07] Loại thuế đề nghị gia hạn:</b></div>
<div>Thuế tiêu thụ đặc biệt đối với ô tô sản xuất hoặc lắp ráp trong nước.</div>
 <div class="align-l"><b>[08] Trường hợp được gia hạn:</b></div>
 <div>Doanh nghiệp có hoạt động sản xuất hoặc lắp ráp ô tô trong nước.</div>
   	  
  </div>	
 </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooterGH">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>  
<br/><br/><br/>
</xsl:template>		
</xsl:stylesheet>