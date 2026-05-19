<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
	
		
      <!-- Phụ lục PL 02-1/TNDN -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_02_1_TNDN">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_02_1_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'02-1/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁC BÊN NHẬN CHUYỂN NHƯỢNG BẤT ĐỘNG SẢN '"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quý đối với doanh nghiệp phát sinh thường xuyên hoạt động bất động sản)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên bên nhận chuyển nhượng</b></td>
							   <td class="align-c"><b>Mã số thuế/CMND (nếu không có mã số thuế)</b></td>
							   <td class="align-c"><b>Địa chỉ</b></td>
							   <td class="align-c"><b>Hợp đồng chuyển nhượng bất động sản(số, ngày...)</b></td>
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
							</tr>
							<xsl:for-each select="$pl01/ChiTietCacBenNhanCNBDS">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenBenNhanCNhuong"/></td>
							  <td class="align-c"><xsl:value-of select="mstBenNhanCN" /></td>
							  <td class="align-l"><xsl:value-of select="diaChi"/></td>
      						  <td class="align-l"><xsl:value-of select="hopDongCNhuongBDS"/></td>
							  </tr>
							</xsl:for-each>
					</table>  
					<div>(CMND: Chứng minh nhân dân)</div>
		      </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
		<!-- Kết thúc PL 02-1/TNDN -->
	</xsl:template>		
</xsl:stylesheet>