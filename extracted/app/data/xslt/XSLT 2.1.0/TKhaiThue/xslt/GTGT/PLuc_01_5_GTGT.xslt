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
				
      <!-- Phụ lục 01-5/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_5_GTGT">	
		<xsl:variable name="pl05" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_5_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-5/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG KÊ SỐ THUẾ GIÁ TRỊ GIA TĂNG ĐÃ NỘP 
CỦA DOANH THU KINH DOANH XÂY DỰNG, LẮP ĐẶT, BÁN HÀNG BẤT ĐỘNG SẢN NGOẠI TỈNH  '"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
		     	<div class="donvitien"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Số chứng từ nộp tiền thuế</b></td>
							   <td class="align-c"><b>Ngày nộp thuế</b></td>
							   <td class="align-c"><b>Nơi nộp tiền thuế (Kho bạc Nhà nước)</b></td>
							   <td class="align-c"><b>Cơ quan thuế quản lý hoạt động kinh doanh xây dựng, lắp đặt, bán hàng, bất động sản ngoại tỉnh</b></td>
							   <td class="align-c"><b>Số tiền thuế đã nộp</b></td>
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
							</tr>
							<xsl:for-each select="$pl05/ThueGTGTDaKKhai">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="soChungTu"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayNop,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="noiNopTien" /></td>
      						  <td class="align-l"><xsl:value-of select="cqtQLy_CT"/> - <xsl:value-of select="cqtQLy_CCT"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sotienKKhai)" /></td>
							  </tr>
							</xsl:for-each>
                           <tr>
                               <td class="align-r" colspan="5"><b>Tổng cộng:</b></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl05/tongCong)"/></b></td>
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
		<!-- Kết thúc PL 01-5/GTGT -->
		
				
	</xsl:template>		
</xsl:stylesheet>