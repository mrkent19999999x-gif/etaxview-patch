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
				
 <!-- Phụ lục 01-1/TBVMT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BVMT">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BVMT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-1/TBVMT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ BẢO VỆ MÔI TRƯỜNG PHẢI NỘP CHO CÁC ĐỊA PHƯƠNG'"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai thuế BVMT mẫu số 01/TBVMT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
		     	<div class="donvitien"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Hàng hóa</b></td>
							   <td class="align-c"><b>Tên doanh nghiệp/cơ sở khai thác</b></td>
							   <td class="align-c"><b>MST doanh nghiệp/cơ sở khai thác</b></td>
							   <td class="align-c"><b>Cơ quan thuế trực tiếp quản lý</b></td>
							   <td class="align-c"><b>Số than tiêu thụ nội địa trong kỳ (tấn)</b></td>
							   <td class="align-c"><b>Tổng số than tiêu thụ trong kỳ(tấn)</b></td>
							   <td class="align-c"><b>Tỷ lệ  phân bổ (%)</b></td>
							   <td class="align-c"><b>Sản lượng than mua của địa phương nơi có than khai thác trong kỳ</b></td>
							   <td class="align-c"><b>Mức thuế bảo vệ môi trường (đồng/tấn)</b></td>
							   <td class="align-c"><b>Số thuế phát sinh phải nộp</b></td>
							</tr>
                            <tr>
						        <td class="align-c">(1)</td>
						        <td class="align-c">(2)</td>
						        <td class="align-c">(3)</td>
						        <td class="align-c">(4)</td>
						        <td class="align-c">(5)</td>
						        <td class="align-c">(6)</td>
						        <td class="align-c">(7)</td>
						        <td class="align-c">(8)=(6)/(7)</td>						   
						        <td class="align-c">(9)</td>
   						        <td class="align-c">(10)</td>
						        <td class="align-c">(11)=(8)*(9)*(10)</td>
							</tr>
							<xsl:for-each select="$pl01/PBoSoThueBVMTChoDPhuong/ChiTietThueBVMTCuaDPhuong">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct2"/></td>
							  <td class="align-l"><xsl:value-of select="ct3" /></td>
							  <td class="align-c"><xsl:value-of select="ct4" /></td>
      						  <td class="align-l"><xsl:value-of select="ct5_ct"/>  <xsl:value-of select="ihtkk:getTenCT(ct5_cct)"/></td>
       						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
       						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
       						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
       						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
       						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
       						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>       						         						         						         						         						  
							  </tr>
							</xsl:for-each>
                           <tr>
                               <td></td>
                               <td class="align-c"><b>Tổng cộng:</b></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>                                                                                                                                                           
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01/PBoSoThueBVMTChoDPhuong/tongSoThuePSinhPNop)"/></b></td>
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
		<!-- Kết thúc PL 01-1/TBVMT -->
		
	</xsl:template>		
</xsl:stylesheet>