<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
	
		
 <!-- Phụ lục 01-1/TNDN -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_TNDN">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-1/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'TÍNH NỘP THUẾ THU NHẬP DOANH NGHIỆP TẠM TÍNH QUÝ CỦA DOANH NGHIỆP CÓ CÁC CƠ SỞ SẢN XUẤT HẠCH TOÁN PHỤ THUỘC'"/> 
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai tạm tính thuế thu nhập doanh nghiệp số 01A/TNDN, 01B/TNDN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
          	<div class="align-l"><b> [06] Tổng số thuế phải nộp trên tờ khai: <span class="number"><xsl:value-of select="$pl01/ct6"/></span></b> đồng</div>
		     	<div class="align-r"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên doanh nghiệp, Cơ sở sản xuất</b></td>
							   <td class="align-c"><b>Mã số thuế</b></td>
							   <td class="align-c"><b>Cơ quan thuế trực tiếp quản lý</b></td>
							   <td class="align-c"><b>Tỷ lệ  phân bổ (%)</b></td>
							   <td class="align-c" colspan="2"><b>Số thuế phân bổ</b></td>
							</tr>
                            <tr>
								<td class="align-c">[07]</td>
								<td class="align-c">[08]</td>
								<td class="align-c">[09]</td>
								<td class="align-c">[10]</td>
								<td class="align-c">[11]</td>
								<td class="align-c" colspan="2">[12]</td>
							</tr>
							<xsl:for-each select="$pl01/BangThueTNDNTamTinh/chiTietBangThueTNDNTamTinh">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct8"/></td>
							  <td class="align-c"><xsl:value-of select="ct9" /></td>
							  <td class="align-l"><xsl:value-of select="ct10_ct"/> - <xsl:value-of select="ct10_cct"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r" colspan="2"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  </tr>
							</xsl:for-each>
                           <tr>
                               <td class="align-c" colspan="4"><b>Tổng cộng:</b></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01/BangThueTNDNTamTinh/tongCot11)"/></b></td>
                               
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01/BangThueTNDNTamTinh/tongCot12)"/></b></td>
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
		<!-- Kết thúc PL 01-1/TNDN -->
		
	   
	</xsl:template>		
</xsl:stylesheet>