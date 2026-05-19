<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 155/2011/TT-BTC ngày 11/11/2011 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
        
<!-- Phụ lục 02-1/TAIN-VSP -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_TAIN_VSP">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_TAIN_VSP' />
			<xsl:call-template name="tkhaiHeader-pluc_VSP">
		<xsl:with-param name="mauTKhai"   select="'02-1/TAIN-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG KÊ SẢN LƯỢNG VÀ DOANH THU XUẤT BÁN DẦU THÔ'"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế tài nguyên)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
			        <div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				    </div>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" colspan="2"><b>Khai thác dầu thô</b></td>
							   <td class="align-c" colspan="4"><b>Xuất bán dầu thô</b></td>
							   <td class="align-c" rowspan="2"><b>Ghi chú</b></td>
							</tr>
							<tr>
							   <td class="align-c"><b>Ngày tháng</b></td>
							   <td class="align-c"><b>Số lượng (thùng)</b></td>
							   <td class="align-c"><b>Ngày tháng</b></td>
							   <td class="align-c"><b>Số lượng (thùng)</b></td>
							   <td class="align-c"><b>Giá tính thuế tài nguyên tạm tính</b></td>
							   <td class="align-c"><b>Doanh thu</b></td>
							</tr>
                            <tr>
								<td class="align-c"><b>(1)</b></td>
								<td class="align-c"><b>(2)</b></td>
								<td class="align-c"><b>(3)</b></td>
								<td class="align-c"><b>(4)</b></td>
								<td class="align-c"><b>(5)</b></td>
								<td class="align-c"><b>(6)</b></td>
								<td class="align-c"><b>(7)= (6)x(5)</b></td>	
								<td class="align-c"><b>(8)</b></td>															
							</tr>
							<xsl:for-each select="$pl01/BKeSLuongVaDThuXBanDTho/CTietBKeSLuongVaDThuXBanDTho">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct2,'dd/mm/yyyy')"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct3)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct4,'dd/mm/yyyy')"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>		
							  <td class="align-l"><xsl:value-of select="ct8"/></td>		
						  </tr>
							</xsl:for-each>
	                      <tr>
                               <td></td>
                               <td class="align-c"><b>Tổng cộng:</b></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_ct3)"/></b></td>
                               <td></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_ct5)"/></b></td>
                               <td></td>     
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_ct7)"/></b></td>                               
							</tr>
					</table>  
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
		<!-- Kết thúc PL 02-1/TAIN-VSP -->        
	</xsl:template>		
</xsl:stylesheet>