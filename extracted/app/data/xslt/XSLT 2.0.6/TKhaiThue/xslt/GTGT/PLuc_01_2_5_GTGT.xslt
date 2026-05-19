<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 119/2014/TT-BTC ngày 25/8/2014 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
				
		<!-- Phụ lục 01-2-5/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_5_GTGT">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_5_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-2/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HÓA ĐƠN, CHỨNG TỪ CỦA HÀNG HOÁ, DỊCH VỤ MUA VÀO'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							 <td class="align-c" rowspan="2"><b>STT</b></td>
							 <td class="align-c" colspan="2"><b>Hoá đơn, chứng từ, biên lai nộp thuế</b></td>
							 <td class="align-c" rowspan="2"><b>Tên người bán</b></td>
							 <td class="align-c" rowspan="2"><b>Mã số thuế người bán</b></td>
							 <td class="align-c" rowspan="2"><b>Giá trị HHDV mua vào chưa có thuế</b></td>
							 <td class="align-c" rowspan="2"><b>Thuế GTGT đủ điều kiện khấu trừ thuế</b></td>
							 <td class="align-c" rowspan="2"><b>Ghi chú</b></td>
							</tr>
							<tr>
							 <td class="align-c"><b>Số hoá đơn</b></td>
							 <td class="align-c"><b>Ngày, tháng, năm lập hóa đơn</b></td>
							</tr>
							<tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
								<td class="align-c">(7)</td>
								<td class="align-c">(8)</td>
							</tr>
							
							<tr>
								<td colspan="8"><i>Hàng hóa, dịch vụ dùng cho dự án đầu tư:</i></td>
							</tr>
						   <xsl:for-each select="$pl02/HHDVDauTuKTru/ChiTietHHDVDauTuKTru/HDonMVao">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
 			  			      <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="tenNBAN" /></td>
							  <td class="align-c"><xsl:value-of select="mstNBAN" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(gtriMuaChuaThue)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="5" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVDauTuKTru/tongGTriHHDVMuaVao)"/></b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVDauTuKTru/tThueGTGT_HHDVMuaVao)"/></b></td>
							  <td></td>
							</tr>
						
						</table>  
<div class="ghichu">						
				<div><b>Tổng giá trị HHDV mua vào phục vụ SXKD được khấu trừ thuế GTGT (**): <xsl:value-of select="ihtkk:formatNumber($pl02/tongCongGTriHHDVMuaVao)"/></b></div>
				<div><b>Tổng số thuế GTGT của HHDV mua vào đủ điều kiện được khấu trừ (***): <xsl:value-of select="ihtkk:formatNumber($pl02/tongCongThueGTGTHHDVMuaVao)"/></b></div>
			  </div>
			</div>
</div>
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>						
			<xsl:call-template name="tkhaiFooter"/>	
<div class="ghichu">			
		<div><i><u><b>Ghi chú: </b></u></i></div><br/>

		<div><i>(**) Tổng giá trị HHDV mua vào phục vụ SXKD được khấu trừ thuế GTGT là tổng cộng số liệu tại cột 6 của dòng tổng của các chỉ tiêu 1, 2.</i></div>
		<div><i>(***) Tổng số thuế GTGT của HHDV  mua vào đủ điều kiện được khấu trừ là tổng cộng số liệu tại cột 7 của dòng tổng của các chỉ tiêu 1, 2.</i></div>
		<div><i>-	GTGT: giá trị gia tăng.</i></div>
		<div><i>-  SXKD: sản xuất kinh doanh.</i></div>
		<div><i>-	HHDV: hàng hóa dịch vụ.</i></div>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>		
		<!-- Kết thúc PL 01-2-5/GTGT -->
		
		</xsl:template>		
</xsl:stylesheet>