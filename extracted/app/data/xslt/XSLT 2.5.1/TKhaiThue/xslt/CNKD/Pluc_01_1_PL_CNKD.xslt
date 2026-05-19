<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'()'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_PL_CNKD">	
		<xsl:variable name="pl01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_PL_CNKD' />
			<xsl:call-template name="tkhaiHeader-pluc_01_1_PL_CNKD">
		<xsl:with-param name="mauTKhai"   select="'01-1/PL-CNKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢN XÁC ĐỊNH SỐ THUẾ ĐƯỢC MIỄN THEO NGHỊ QUYẾT SỐ 406/NQ-UBTVQH15'"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>
	  
			<div class="ndungtkhai_div">	
			<div class="content">
			
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div> 
					
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="1"><b>STT</b></td>
							<td class="align-c" rowspan="1"><b>Chỉ tiêu</b></td>
							<td class="align-c" rowspan="1"><b>Mã chỉ tiêu</b></td>
							<td class="align-c" rowspan="1"><b>Số tiền thuế phát sinh phải nộp</b></td>
							<td class="align-c" rowspan="1"><b>Số tiền thuế được miễn</b></td>
							<td class="align-c" rowspan="1"><b>Số thuế phải nộp sau miễn thuế</b></td>
						</tr>
						 <tr>
						    <td class="align-c"><b>1</b></td>
						    <td class="align-l"><b>Tổng số thuế GTGT</b></td>
							<td class="align-c"><b>[12]</b></td>
						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueGTGT/ct12_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueGTGT/ct12_2)"/></b></td>
						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueGTGT/ct12_3)"/></b></td>
          				 </tr>	
						<tr>
						    <td class="align-c"><b>2</b></td>
						    <td class="align-l"><b>Tổng số thuế TNCN</b></td>
							<td class="align-c"><b>[13]</b></td>
						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTNCN/ct13_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTNCN/ct13_2)"/></b></td>
						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTNCN/ct13_3)"/></b></td>
          				 </tr>							 
					     <tr>
						    <td class="align-c"><b>3</b></td>
						    <td class="align-l"><b>Tổng số thuế TTĐB</b></td>
							<td class="align-c"><b>[14]</b></td>
  						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTTDB/tong_ct14_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTTDB/tong_ct14_2)"/></b></td>
						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTTDB/tong_ct14_3)"/></b></td>
          				 </tr>
						 <tr>
						    <td></td>
						    <td class="align-l"><i>Trong đó</i></td>
							<td></td>
  						    <td></td>
						    <td></td>
							<td></td>
          				 </tr>
							<xsl:for-each select="$pl01_1/ThueTTDB/CTietThueTTDB">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct14_ten"/></td>
							  <td></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14_1)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14_2)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14_3)"/></td>				
							  </tr>
						</xsl:for-each>			
						  <tr>
						    <td class="align-c"><b>4</b></td>
						    <td class="align-l"><b>Tổng số thuế Tài nguyên</b></td>
							<td class="align-c"><b>[15]</b></td>
  						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTAIN/tong_ct15_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTAIN/tong_ct15_2)"/></b></td>
						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueTAIN/tong_ct15_3)"/></b></td>
          				 </tr>
						 <tr>
						    <td></td>
						    <td class="align-l"><i>Trong đó</i></td>
							<td></td>
  						    <td></td>
						    <td></td>
							<td></td>
          				 </tr>
							<xsl:for-each select="$pl01_1/ThueTAIN/CTietThueTAIN">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct15_ten"/></td>
							  <td></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15_1)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15_2)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15_3)"/></td>				
							  </tr>
						</xsl:for-each>			
						  <tr>
						    <td class="align-c"><b>5</b></td>
						    <td class="align-l"><b>Tổng số Thuế BVMT</b></td>
							<td class="align-c"><b>[16]</b></td>
  						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueBVMT/tong_ct16_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueBVMT/tong_ct16_2)"/></b></td>
						    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/ThueBVMT/tong_ct16_3)"/></b></td>
          				 </tr>
						 <tr>
						    <td></td>
						    <td class="align-l"><i>Trong đó</i></td>
							<td></td>
  						    <td></td>
						    <td></td>
							<td></td>
          				 </tr>
							<xsl:for-each select="$pl01_1/ThueBVMT/CTietThueBVMT">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct16_ten"/></td>
							  <td></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16_1)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16_2)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16_3)"/></td>				
							  </tr>
						</xsl:for-each>			
						  
					</table>
</div>
</div>
<xsl:call-template name="tkhaiFooter_PL92">
	</xsl:call-template>
	</xsl:if><table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>