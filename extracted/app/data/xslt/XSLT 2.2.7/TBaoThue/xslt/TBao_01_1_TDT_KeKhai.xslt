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

		<xsl:call-template name="tbaoHeader_01_TDT">
			<xsl:with-param name="mauTBao"   select="'01-1/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></div> <br/>
	
					<xsl:choose>
					<xsl:when test="$ndungTBao/lyDo!=''">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ thuế điện tử của người nộp thuế gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>. Cơ quan thuế thông báo về việc không tiếp nhận hồ sơ thuế điện tử  người nộp thuế, cụ thể như sau:</div><br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Tên hồ sơ thuế điện tử: </div><br/>
						<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c"><b>Tờ khai/Phụ lục</b></td>
					<td class="align-c"><b>Loại tờ khai</b></td>
					<td class="align-c"><b>Kỳ tính thuế</b></td>
					<td class="align-c"><b>Lần nộp</b></td>
					<td class="align-c"><b>Nơi nộp</b></td>
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
							  <td class="align-l"><xsl:value-of select="kyTinhThue"/></td>
							  <td class="align-c"><xsl:value-of select="lanNop"/></td>
							   <td class="align-l"><xsl:value-of select="tenNoiNop"/></td>
							</tr>
							
							</xsl:for-each>
			</table>	<br/>	
			
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Lý do: <xsl:value-of select="$ndungTBao/lyDo"/></div> <br/>
					</xsl:when>
					<xsl:otherwise>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ thuế điện tử của người nộp thuế gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>. Cơ quan thuế thông báo tiếp nhận hồ sơ thuế điện tử của người nộp thuế, cụ thể như sau:</div> <br/>
						
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Tên hồ sơ thuế điện tử:</div> <br/>
									<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c"><b>Tờ khai/Phụ lục</b></td>
					<td class="align-c"><b>Loại tờ khai</b></td>
					<td class="align-c"><b>Kỳ tính thuế</b></td>
					<td class="align-c"><b>Lần nộp</b></td>
					<td class="align-c"><b>Nơi nộp</b></td>
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
							  <td class="align-l"><xsl:value-of select="kyTinhThue"/></td>
							  <td class="align-c"><xsl:value-of select="lanNop"/></td>
							   <td class="align-l"><xsl:value-of select="tenNoiNop"/></td>
							</tr>
							
							</xsl:for-each>
			</table>	<br/>	
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> <br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Sau khi kiểm tra hồ sơ, Cơ quan thuế sẽ có thông báo cho người nộp thuế về tình trạng xử lý hồ sơ trên.</div><br/>
					
					</xsl:otherwise>
				</xsl:choose>
						
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Người nộp thuế cần biết thêm chi tiết xin vui lòng truy cập theo đường dẫn: <xsl:value-of select="$ndungTBao/duongDan"/> hoặc gọi điện tới số hotline: <xsl:value-of select="$ndungTBao/hotline"/> để được hỗ trợ trực tiếp.</div> <br/>
	
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để người nộp thuế biết, thực hiện./.</div>		
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>	
	</xsl:template>		
</xsl:stylesheet>