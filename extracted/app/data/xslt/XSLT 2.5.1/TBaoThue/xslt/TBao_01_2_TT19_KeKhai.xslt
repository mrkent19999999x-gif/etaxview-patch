<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="ttinDaiLyThue" select='TBaoThueDTu/TBaoThue/TTinChung/DaiLyThue' />
		<xsl:variable name="ttinCQT" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'"/>

		<xsl:call-template name="tbaoHeader_01_TDT">
			<xsl:with-param name="mauTBao"   select="'01-02/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</div><br/>
					
				<xsl:if test="$ndungTBao/trangThai='N'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ khai thuế/BCTC/BCAC của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/>
						<xsl:if test="$ttinDaiLyThue/tenDLT !=''">
						do <xsl:value-of select="$ttinDaiLyThue/tenDLT"/> 
						</xsl:if>
						gửi tới cơ quan thuế <xsl:value-of select="$ttinCQT/tenCQT"/> đã được cổng thông tin điện tử của CỤC THUẾ thông báo tiếp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mi')"/> phút <xsl:value-of select="substring-before(ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'ii'),'.')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'yyyy')"/>
						mã giao dịch điện tử <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>. Cơ quan thuế thông báo về việc chấp nhận hồ sơ khai thuế/BCTC/BCAC của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> 
						<xsl:if test="$ttinDaiLyThue/tenDLT !=''">
						do <xsl:value-of select="$ttinDaiLyThue/tenDLT"/> 
						</xsl:if>
						gửi tới cơ quan thuế <xsl:value-of select="$ttinCQT/tenCQT"/> , cụ thể như sau:</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên tờ khai/Phụ lục: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Loại tờ khai: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/loaiToKhai"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Kỳ tính thuế: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/kyTinhThue"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lần nộp hoặc lần bổ sung: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/lanNop"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lý do không chấp nhận cụ thể như sau:</div>
									
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
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> điều chỉnh và gửi lại hồ sơ khai thuế/BCTC/BCAC theo hướng dẫn nêu trên để được ghi nhận nghĩa vụ nộp hồ sơ thuế/giải quyết hồ sơ thuế theo quy định (trừ hồ sơ đăng ký thuế).</div>
				</xsl:if>	
				<xsl:if test="$ndungTBao/trangThai='Y'">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ khai thuế/BCTC/BCAC của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/>
						<xsl:if test="$ttinDaiLyThue/tenDLT !=''">
						do <xsl:value-of select="$ttinDaiLyThue/tenDLT"/> 
						</xsl:if>
						gửi tới cơ quan thuế <xsl:value-of select="$ttinCQT/tenCQT"/> đã được cổng thông tin điện tử của CỤC THUẾ thông báo tiếp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mi')"/> phút <xsl:value-of select="substring-before(ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'ii'),'.')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'yyyy')"/>
						mã giao dịch điện tử <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>. Cơ quan thuế thông báo về việc chấp nhận hồ sơ khai thuế/BCTC/BCAC của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> 
						<xsl:if test="$ttinDaiLyThue/tenDLT !=''">
						do <xsl:value-of select="$ttinDaiLyThue/tenDLT"/> 
						</xsl:if>
						gửi tới cơ quan thuế <xsl:value-of select="$ttinCQT/tenCQT"/> , cụ thể như sau:</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên tờ khai/Phụ lục: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Loại tờ khai: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/loaiToKhai"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Kỳ tính thuế: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/kyTinhThue"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lần nộp hoặc lần bổ sung: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/lanNop"/></div>
						
						<xsl:if test="$ndungTBao/IDKhoanNop/CTietIDKhoanNop/maDinhDanh !=''">
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thông tin mã định danh khoản phải nộp:</div>
							<table class="tkhai_table">
								<tr>
									<td class="align-c"><b>STT</b></td>
									<td class="align-c" width="120"><b>Mã định danh khoản phải nộp (ID)</b></td>
									<td class="align-c" width="120"><b>Số tiền thuế phải nộp</b></td>
									<td class="align-c" width="120"><b>Loại tiền</b></td>
									<td class="align-c" width="400"><b>Ghi chú</b></td>
								</tr>
								 <xsl:for-each select="$ndungTBao/IDKhoanNop/CTietIDKhoanNop">
													<xsl:variable name="currentRows" select='position()' />
											<tr>
											  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
											  <td class="align-l"><xsl:value-of select="maDinhDanh"/></td>
											  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(soTienPNop)"/></td>
											  <td class="align-c"><xsl:value-of select="tenLoaiTien"/></td>
											  <td class="align-c">
												<xsl:if test="number(string(soTienPNop))>0">Số thuế phải nộp tăng thêm do khai bổ sung</xsl:if>
												<xsl:if test="number(string(soTienPNop))&lt;0">Số thuế phải nộp được điều chỉnh giảm do khai bổ sung</xsl:if>										  
											  </td>
											</tr>
											
								</xsl:for-each>
							</table>	<br/>	
						</xsl:if>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hồ sơ khai thuế (HSKT) của người nộp thuế được cơ quan thuế chấp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayChapNhan,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayChapNhan,'mi')"/> phút <xsl:value-of select="substring-before(ihtkk:stringDatetime($ndungTBao/ngayChapNhan,'ii'),'.')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayChapNhan,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayChapNhan,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayChapNhan,'yyyy')"/>. 
						Ngày hoàn thành việc nộp HSKT điện tử của NNT là ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayNopThucTe,'yyyy')"/>.</div><br/>
			            <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp hồ sơ cần giải trình, bổ sung thông tin, tài liệu, cơ quan thuế sẽ có thông báo gửi người nộp thuế. Cơ quan thuế sẽ thực hiện trả kết quả giải quyết hồ sơ cho người nộp thuế qua https://thuedientu.gdt.gov.vndiv></div><br/>

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