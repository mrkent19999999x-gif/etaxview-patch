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
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 110/2015/TT-BTC  - dành riêng cho dịch vụ khai thuế điện tử'"/>

		<xsl:call-template name="tbaoHeader_01_TDT">
			<xsl:with-param name="mauTBao"   select="'01-02/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></div> <br/>
	
				<xsl:if test="$ndungTBao/trangThai='N'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ khai thuế (HSKT) điện tử của người nộp thuế (NNT) đã được Cổng thông tin điện tử của Cục Thuế <b>tiếp nhận</b> vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'yyyy')"/>, Cơ quan thuế thông báo về việc <b>không chấp nhận việc nộp HSKT điện tử</b> của người nộp thuế (NNT):</div><br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1) HSKT điện tử: </div><br/>
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
						
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2) Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/> </div><br/>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3) Lý do không chấp nhận:</div>					
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
							  <td class="align-l"><xsl:value-of select="tenNhomLoi"/> (<xsl:value-of select="tenLoi"/>)</td>
							  <td class="align-l"><xsl:value-of select="huongDanXuLy"/></td>
							  <td class="align-l"><xsl:value-of select="ghiChu"/></td>
							</tr>
							
							</xsl:for-each>
			</table>	<br/>	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị NNT thực hiện theo hướng dẫn, trường hợp NNT gửi lại HSKT điện tử theo hướng dẫn thì ngày hoàn thành việc nộp HSKT điện tử của NNT sẽ là ngày trên thông báo tiếp nhận lần đầu của HSKT điện tử.</div>
		</xsl:if>	
		<xsl:if test="$ndungTBao/trangThai='Y'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ khai thuế (HSKT) điện tử của người nộp thuế (NNT) đã được Cổng thông tin điện tử của Cục Thuế <b>tiếp nhận</b> vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'yyyy')"/>, Cơ quan thuế thông báo chấp nhận việc nộp HSKT điện tử của NNT:</div> <br/>
						
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
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3) HSKT điện tử đã được Cơ quan thuế chấp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'yyyy')"/>.  Ngày hoàn thành việc nộp HSKT điện tử của NNT là ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayTiepNhan,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayTiepNhan,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayTiepNhan,'yyyy')"/>.</div><br/>
	</xsl:if>
						
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp cần biết thêm thông tin chi tiết, NNT vui lòng liên hệ với Cơ quan thuế quản lý trực tiếp để được hỗ trợ.</div> 
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để NNT biết và thực hiện./.</div>		
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>		
	</xsl:template>		
</xsl:stylesheet>