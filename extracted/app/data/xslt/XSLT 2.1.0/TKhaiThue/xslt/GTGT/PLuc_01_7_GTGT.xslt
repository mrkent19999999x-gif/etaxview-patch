<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 26/2015/TT-BTC ngày 27/2/2015 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
				
	 <!-- Phụ lục 01-7/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_7_GTGT">	
		<xsl:variable name="pl07" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_7_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-7/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ GIÁ TRỊ GIA TĂNG PHẢI NỘP CHO CÁC ĐỊA PHƯƠNG NƠI CÓ CÔNG TRÌNH XÂY DỰNG, LẮP ĐẶT LIÊN TỈNH '"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
		     	<div class="donvitien"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
								<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên công trình</b></td>
							   <td class="align-c"><b>Doanh thu</b></td>
							   <td class="align-c"><b>Cơ quan thuế địa phương quản lý</b></td>
							   <td class="align-c"><b>Tỷ lệ phân bổ (%)</b></td>
							   <td class="align-c"><b>Số thuế giá trị gia tăng phải nộp</b></td>
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
							</tr>
							<xsl:for-each select="$pl07/PBoChoDiaPhuongLienTinh">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenCongTrinh"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu)" /></td>
							  <td class="align-l"><xsl:value-of select="cqtQLy_CT"/> - <xsl:value-of select="cqtQLy_CCT"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLePhanBo)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThueGTGTPNop)" /></td>
							</tr>
							</xsl:for-each>
                           <tr>
                               <td class="align-l" colspan="5"><b>Tổng cộng:</b></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl07/tongCong)"/></b></td>
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
		<!-- Kết thúc PL 01-7/GTGT -->
		
      			
	</xsl:template>		
</xsl:stylesheet>