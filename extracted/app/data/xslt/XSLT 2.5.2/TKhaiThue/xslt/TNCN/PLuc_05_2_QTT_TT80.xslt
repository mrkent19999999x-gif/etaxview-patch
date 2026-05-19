<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_2_BK_QTT">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_2_BK_QTT' />
			<xsl:call-template name="tkhaiHeader-pluc_tt80">
		<xsl:with-param name="mauTKhai"   select="' 05-2/BK-QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN THUỘC DIỆN TÍNH THUẾ THEO THUẾ SUẤT TOÀN PHẦN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/QTT-TNCN)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Họ và tên</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
							<td class="align-c" rowspan="2"><b>Loại giấy tờ</b></td>
							<td class="align-c" rowspan="2"><b>Số CMND/CCCD/Hộ chiếu</b></td>
							<td class="align-c" rowspan="2"><b>Cá nhân không cư trú</b></td>
							<td class="align-c" colspan="2"><b>Thu nhập chịu thuế (TNCT)</b></td>
							
							<td class="align-c" rowspan="2"><b>Trong đó thu nhập chịu thuế được miễn theo Hiệp định</b></td>
							<td class="align-c" rowspan="2"><b>Trong đó TN chịu thuế được miễn theo quy định của Hợp đồng dầu khí</b></td>
							
							<td class="align-c" colspan="2"><b>Số thuế thu nhập cá nhân (TNCN) đã khấu trừ</b></td>
						</tr>
						<tr>
							<td class="align-c" rowspan="1">Tổng số</td>
							<td class="align-c" rowspan="1">Trong đó: TNCT từ phí mua BH nhân thọ, BH không bắt buộc khác của DN BH không thành lập tại Việt Nam cho người lao động </td>
							<td class="align-c" rowspan="1">Tổng số</td>
							<td class="align-c" rowspan="1">Trong đó: Số thuế từ phí mua BH nhân thọ, BH không bắt buộc khác của DN BH không thành lập tại Việt Nam cho người lao động</td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
						</tr>
					
					<xsl:for-each select="$pl02/BKeCTietCNhan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td class="align-c"><xsl:value-of select="ct09a_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct09" /></td>
							  <td class="align-c">[<xsl:if test="ct10='true' or ct10='1'">x</xsl:if>]</td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)" /></td>
							  
							</tr>
							
							
							
						</xsl:for-each>
							<tr>
								<td class="align-c" colspan="6"><b>Tổng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct17)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct18)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct19)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct20)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct21)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct22)" /></b></td>
								
							</tr>
					</table>
					<div><i>(BH: Bảo hiểm; DN: doanh nghiệp; CMND: Chứng minh nhân dân; CCCD: Căn cước công dân)</i></div>
				</div>
			</div>
		</xsl:if>
<table style="page-break-inside: avoid;" >
<tr>
<td>		   
	 <xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		 
	</xsl:template>		
</xsl:stylesheet>