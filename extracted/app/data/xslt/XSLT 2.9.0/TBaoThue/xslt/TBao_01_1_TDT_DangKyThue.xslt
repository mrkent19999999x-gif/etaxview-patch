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
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'"/>

		<xsl:call-template name="tbaoHeader_01_TDT_DKT">
			<xsl:with-param name="mauTBao"   select="'01-1/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</div>
	
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ đăng ký thuế điện tử của người nộp thuế (NNT) do <xsl:value-of select="$NNhanTBaoThue/tenNNT"/> gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, cụ thể như sau:</div><br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+  <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/> mẫu <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/mauSo"/> và các tài liệu đính kèm </div><br/> 
						
						<!--
						<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c"><b>Tờ khai/Phụ lục</b></td>
					<td class="align-c"><b>Mẫu số</b></td>
					<td class="align-c"><b>Lần nộp</b></td>
					<td class="align-c"><b>Nơi nộp</b></td>
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
							  <td class="align-c"><xsl:value-of select="mauSo"/></td>
							  <td class="align-c"><xsl:value-of select="lanNop"/></td>
							   <td class="align-l"><xsl:value-of select="noiNop"/></td>
							</tr>
						</xsl:for-each>
			</table>	<br/>

-->

			
									<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> <br/>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hồ sơ đăng ký thuế điện tử của người nộp thuế đã được cơ quan thuế tiếp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/></div> <br/>
									
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hồ sơ đăng ký thuế sẽ được cơ quan thuế tiếp tục kiểm tra và trả Thông báo kết quả cập nhật thông tin trong hệ thống quản lý thuế của cơ quan thuế trong thời hạn 03 (ba) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ của người nộp thuế ghi trên Thông báo này															
		
	</div> 
	<br/>									
					
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin vui lòng truy cập theo đường dẫn: <xsl:value-of select="$ndungTBao/duongDan"/> hoặc liên hệ với <xsl:value-of select="TBaoThueDTu/TBaoThue/TTinChung/CQT/tenCQTQuanLy"/> để được hỗ trợ.</div> <br/>
	
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để <xsl:value-of select="$NNhanTBaoThue/tenNNT"/> biết và thực hiện./.</div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã hồ sơ tra cứu trên Cổng dịch vụ công quốc gia:  <xsl:value-of select="$ndungTBao/maDVC"/></div>			
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>	
	</xsl:template>		
</xsl:stylesheet>