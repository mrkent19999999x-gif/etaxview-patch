<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="ttinDaiLyThue" select='TBaoThueDTu/TBaoThue/TTinChung/DaiLyThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="''"/>
<style type="text/css">
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
		<xsl:call-template name="tbaoHeader_01_TEM_Pxuat_NhaIn">
			<xsl:with-param name="mauTBao"   select="'01-01/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Kính gửi: </b> <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Mã số thuế: </b> <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></div>
				<br/>		
				<xsl:if test="$ndungTBao/trangThai='N'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ phiếu xuất tem điện tử của người nộp thuế gửi tới cơ quan thuế lúc<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>.
						Cơ quan thuế thông báo về việc không tiếp nhận dữ liệu tem điện tử của người nộp thuế, cụ thể như sau:</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên Hồ sơ/Phụ lục: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Loại hồ sơ: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/loaiToKhai"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Ngày nộp: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/kyTinhThue"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lần nộp: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/lanNop"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lý do không tiếp nhận:</div><br/>
						<table class="tkhai_table center" >
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
					    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> điều chỉnh và gửi lại phiếu xuất kho tem điện tử theo hướng dẫn nêu trên để được ghi nhận nghĩa vụ nộp hồ sơ khai thuế theo quy định.</div>			
			</xsl:if>	
			
			<xsl:if test="$ndungTBao/trangThai='Y' or $ndungTBao/trangThai='0'">
			            
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ phiếu xuất tem điện tử của người nộp thuế gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, cụ thể như sau:</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên Hồ sơ/Phụ lục: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Loại hồ sơ: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/loaiToKhai"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Ngày nộp: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/kyTinhThue"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lần nộp: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/lanNop"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div>
						
			</xsl:if>	
						

			 
	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để người nộp thuế biết, thực hiện./.</div><br/>
				<br/>		
        <!-- <table style="page-break-inside: avoid;" width="100%">
		    <tr>
				<td width="50%">
					<div>&#160;&#160;&#160;<b>Nơi nhận:</b></div>
					<div>&#160;&#160;&#160;-<xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
					<div>&#160;&#160;&#160;- Lưu: Cổng thông tin điện tử của TCT.</div>
				</td>
				<td class="align-c">
					<div><b>TỔNG CỤC THUẾ</b></div>
				</td>
			</tr>
			<tr>
			    <td width="50%">&#160;&#160;&#160;</td>
				<td class="align-r" colspan="2">
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table> -->
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>			
	</xsl:template>		
</xsl:stylesheet>