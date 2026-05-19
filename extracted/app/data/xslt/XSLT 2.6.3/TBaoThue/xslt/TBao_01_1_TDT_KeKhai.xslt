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
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 110/2015/TT-BTC - dành riêng cho dịch vụ khai thuế điện tử'"/>

		<xsl:call-template name="tbaoHeader_01_1TDT">
			<xsl:with-param name="mauTBao"   select="'01-01/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></div> <br/>
	
				<xsl:if test="$ndungTBao/trangThai='N'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ HSKT điện tử của người nộp thuế (NNT) gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>. Cơ quan thuế thông báo về việc không tiếp nhận HSKT điện tử NNT, cụ thể như sau:</div><br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Tên hồ sơ thuế điện tử: </div><br/>
								<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c" width="400"><b>Tờ khai/Phụ lục</b></td>
					<td class="align-c" width="120"><b>Loại tờ khai</b></td>
					<td class="align-c" width="120"><b>Kỳ tính thuế</b></td>
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
							  <td class="align-c"><xsl:if test="loaiToKhai= 'Chính thức'"><xsl:value-of select="lanNop"/></xsl:if> </td>
	                          <td class="align-c"><xsl:if test="loaiToKhai= 'Bổ sung'"><xsl:value-of select="lanNop"/></xsl:if> </td>
							</tr>
							
							</xsl:for-each>
			</table>	<br/>		
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/> </div><br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Lý do không tiếp nhận:</div><br/>
						<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c"><b>Mô tả lỗi</b></td>
					<td class="align-c"><b>Hướng dẫn xử lý</b></td>
					<td class="align-c"><b>Ghi chú</b></td>
				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class= "align-c">(3)</td>
				   <td class="align-c">(4)</td>
				</tr>
				
				 <xsl:for-each select="$ndungTBao/LyDo/CTietLyDo">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenNhomLoi"/> - <xsl:value-of select="tenLoi"/></td>
							  <td class="align-l"><xsl:value-of select="huongDanXuLy"/></td>
							  <td class="align-l"><xsl:value-of select="ghiChu"/></td>
							</tr>
							
							</xsl:for-each>
			</table>	<br/>	
								
			</xsl:if>	
			<xsl:if test="$ndungTBao/trangThai='Y' or $ndungTBao/trangThai='0'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ khai thuế (HSKT) điện tử của người nộp thuế (NNT) gửi tới Cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, Cơ quan thuế thông báo tiếp nhận HSKT điện tử của NNT:</div> <br/>
						
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1) HSKT điện tử:</div> <br/>
									<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c" width="400"><b>Tờ khai/Phụ lục</b></td>
					<td class="align-c" width="120"><b>Loại tờ khai</b></td>
					<td class="align-c" width="120"><b>Kỳ tính thuế</b></td>
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
							<td class="align-c"><xsl:if test="loaiToKhai= 'Chính thức'"><xsl:value-of select="lanNop"/></xsl:if> </td>
	                          <td class="align-c"><xsl:if test="loaiToKhai= 'Bổ sung'"><xsl:value-of select="lanNop"/></xsl:if> </td>
	
							</tr>
							
							</xsl:for-each>
			</table>	<br/>	
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2) Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> <br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3) HSKT điện tử đã được Cơ quan thuế <b>tiếp nhận </b> vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, HSKT điện tử sẽ được Cơ quan thuế tiếp tục kiểm tra và trả Thông báo về việc chấp nhận hay không chấp nhận trong thời gian 01 ngày làm việc kể từ thời điểm Cơ quan thuế tiếp nhận HSKT điện tử.</div><br/>
					
			</xsl:if>	
						

	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp cần biết thêm thông tin chi tiết, NNT vui lòng liên hệ với Cơ quan thuế quản lý trực tiếp để được hỗ trợ.</div> 
	
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để NNT biết và thực hiện./.</div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã hồ sơ tra cứu trên Cổng dịch vụ công quốc gia: <xsl:value-of select="$ndungTBao/maDVC"/></div>		
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>		
	</xsl:template>		
</xsl:stylesheet>