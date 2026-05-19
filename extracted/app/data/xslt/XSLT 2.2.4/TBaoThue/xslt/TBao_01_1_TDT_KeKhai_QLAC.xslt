<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 110/2015/TT-BTC ngày 28/7/2015 của Bộ Tài chính'"/>

		<xsl:call-template name="tbaoHeader_01_TDT_QLAC">
			<xsl:with-param name="mauTBao"   select="'01-1/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></div> <br/>
	
				<xsl:if test="$ndungTBao/trangThai='N'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ HSKT điện tử của người nộp thuế gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>. Cơ quan thuế thông báo về việc không tiếp nhận HSKT điện tử người nộp thuế, cụ thể như sau:</div><br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Tên hồ sơ thuế điện tử: </div><br/>
								<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c" width="400"><b>Tờ khai/Phụ lục</b></td>
					<td class="align-c" width="120"><b>Loại tờ khai</b></td>
					<td class="align-c" width="120"><b>Kỳ tính thuế</b></td>
					<td class="align-c" width="120"><b>Lần nộp/Lần bổ sung</b></td>

				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class= "align-c">(3)</td>
				   <td class="align-c">(4)</td>
					<td class="align-c">(5)</td>

				</tr>
				
				 <xsl:for-each select="$ndungTBao/HoSoThue/CTietHoSoThue">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tokhai-phuluc"/></td>
							  <td class="align-c"><xsl:value-of select="loaiToKhai"/></td>
							  <td class="align-c"><xsl:value-of select="kyTinhThue"/></td>
							  <td class="align-c"><xsl:value-of select="lanNop"/></td>
	
							</tr>
							
							</xsl:for-each>
			</table>	<br/>		
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/> </div><br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Lý do không tiếp nhận:</div><br/>
						<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c"><b>Tên lỗi</b></td>
					<td class="align-c"><b>Thông tin lỗi trên TK/phụ lục</b></td>
					<td class="align-c"><b>Hướng dẫn xử lý</b></td>
					<td class="align-c"><b>Ghi chú</b></td>
				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class= "align-c">(3)</td>
				   <td class="align-c">(4)</td>
					<td class="align-c">(5)</td>
				</tr>
				
				 <xsl:for-each select="$ndungTBao/LyDo/CTietLyDo">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenNhomLoi"/> - <xsl:value-of select="tenLoi"/></td>
							  <td class="align-l"><xsl:value-of select="ttinLoiTrenTKhai"/></td>
							  <td class="align-l"><xsl:value-of select="huongDanXuLy"/></td>
							  <td class="align-l"><xsl:value-of select="ghiChu"/></td>
							</tr>
							
							</xsl:for-each>
			</table>	<br/>	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị NNT điều chỉnh và gửi lại HSKT điện tử theo hướng dẫn để được ghi nhận nghĩa vụ nộp HSKT theo quy định.</div>
						
			</xsl:if>	
			<xsl:if test="$ndungTBao/trangThai='Y'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ thuế điện tử của người nộp thuế gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>. Cơ quan thuế thông báo về việc tiếp nhận hồ sơ thuế điện tử của người nộp thuế, cụ thể như sau</div> <br/>
						
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Tên hồ sơ thuế điện tử:</div> <br/>
									<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c" width="400"><b>Hồ sơ/Phụ lục</b></td>
					<td class="align-c" width="120"><b>Loại hồ sơ</b></td>
					<td class="align-c" width="120"><b>Kỳ tính thuế/Kỳ báo cáo</b></td>
					<td class="align-c" width="120"><b>Lần nộp</b></td>
                    <td class="align-c" width="120"><b>Lần bổ sung</b></td>

				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class= "align-c">(3)</td>
				   <td class="align-c">(4)</td>
					<td class="align-c">(5)</td>
					<td class="align-c">(6)</td>

				</tr>
				
				 <xsl:for-each select="$ndungTBao/HoSoThue/CTietHoSoThue">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tokhai-phuluc"/></td>
							  <td class="align-c"><xsl:value-of select="loaiToKhai"/></td>
							  <td class="align-c"><xsl:value-of select="kyTinhThue"/></td>
							  <td class="align-c"><xsl:value-of select="lanNop"/></td>
	                           <td class="align-c"></td>
							</tr>
							
							</xsl:for-each>
			</table>	<br/>	
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> <br/>
						</xsl:if>	
						
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Người nộp thuế cần biết thêm chi tiết, xin vui lòng liên hệ với cơ quan thuế quản lý trực tiếp để được hỗ trợ. Cơ quan thuế thông báo để người nộp thuế biết, thực hiện./.</div> <br/>
	
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>		
	</xsl:template>		
</xsl:stylesheet>