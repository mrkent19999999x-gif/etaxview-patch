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
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'"/>
<style type="text/css">
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
		<xsl:call-template name="tbaoHeader_01_1TDT">
			<xsl:with-param name="mauTBao"   select="'01-1/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</div>
						
				<xsl:if test="$ndungTBao/trangThai='N'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ thuế của <xsl:value-of select="$NNhanTBaoThue/tenNNT"/>
						<!-- <xsl:if test="$ttinDaiLyThue/tenDLT !=''">
						do <xsl:value-of select="$ttinDaiLyThue/tenDLT"/>
						</xsl:if> -->
						gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>
						. Cơ quan thuế thông báo về việc không tiếp nhận hồ sơ thuế của người nộp thuế, cụ thể như sau:</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên hồ sơ: Thay đổi, bổ sung thông tin đã ký thỏa thuận</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lần nộp hoặc lần bổ sung: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/lanNop"/></div>
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
					    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> điều chỉnh và gửi lại hồ sơ thuế theo hướng dẫn nêu trên để được ghi nhận nghĩa vụ nộp hồ sơ thuế theo quy định.</div>			
			</xsl:if>	
			
			<xsl:if test="$ndungTBao/trangThai='Y' or $ndungTBao/trangThai='0'">
			            
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ thuế của <xsl:value-of select="$NNhanTBaoThue/tenNNT"/>
						<xsl:if test="$ttinDaiLyThue/tenDLT !=''">
						do <xsl:value-of select="$ttinDaiLyThue/tenDLT"/>
						</xsl:if>
						gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, cụ thể như sau:</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên hồ sơ: Thay đổi, bổ sung thông tin đã ký thỏa thuận</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lần nộp hoặc lần bổ sung: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/lanNop"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hồ sơ thay đổi, bổ sung thông tin đã ký thỏa thuận của người nộp thuế đã được cơ quan thuế tiếp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/></div>
<!-- 						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hồ sơ <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/> sẽ được cơ quan thuế tiếp tục kiểm tra và trả kết quả cho người nộp thuế như sau:</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên kết quả: Thông báo về việc hồ sơ đảm bảo, hoặc chưa đảm bảo các điều kiện về kết nối với Cổng thông tin điện tử của Cục Thuế, hoặc yêu cầu bổ sung thông tin</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thời hạn trả kết quả: 20 ngày làm việc kể từ ngày nhận được hồ sơ</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Địa điểm nhận kết quả: Cổng thông tin điện tử của Cục thuế</div> -->
			</xsl:if>	
						

			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin vui lòng truy cập theo đường dẫn https://dichvucong.gdt.gov.vn/tthc/homelogin hoặc liên hệ với cơ quan thuế nơi nộp hồ sơ để được hỗ trợ.</div> 
	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để <xsl:value-of select="$NNhanTBaoThue/tenNNT"/> biết và thực hiện./.</div><br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã hồ sơ tra cứu trên Cổng dịch vụ công quốc gia: <xsl:value-of select="$ndungTBao/maDVC"/></div><br/>		
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