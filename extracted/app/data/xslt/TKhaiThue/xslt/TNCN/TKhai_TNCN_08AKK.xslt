<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"> 
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:template match="/">
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />		 
<xsl:variable name="kd_tky" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/DuKienKDoanhTrongKyCuaNhom' />
<xsl:variable name="tNhapCN" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ThuNhapVaSoThuePNopCuaTungCaNhan' />
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'08A/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho nhóm cá nhân kinh doanh thực hiện nộp thuế theo kê khai)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
			<div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				</div>
				<tr>
					<td class="b">I. DỰ KIẾN KẾT QUẢ KINH DOANH TRONG KỲ CỦA NHÓM KINH DOANH:</td>
				</tr>
				<tr>
					<td class="tkhaiheader">
						<table class="tkhai_table">
							<tr class="tkhaiheader">
								<td>STT</td>
								<td colspan="2">Chỉ tiêu</td>
								<td>Số tiền </td>
							</tr>
							<tr>
								<td class="align-c">1</td>
								<td>Tổng doanh thu phát sinh</td>
								<td class="tkhaiheader">[21]</td>
								<td class="align-r">
									<xsl:value-of  select="ihtkk:formatNumber($kd_tky/ct21)"/>
								</td>
							</tr>
							<tr>
								<td class="align-c">2</td>
								<td>Tổng chi phí phát sinh</td>
								<td class="tkhaiheader">[22]</td>
								<td class="align-r">
									<xsl:value-of  select="ihtkk:formatNumber($kd_tky/ct22)"/>
								</td>
							</tr>
							<tr>
								<td class="align-c">3</td>
								<td>Tổng thu nhập chịu thuế</td>
								<td class="tkhaiheader">[23]</td>
								<td class="align-r">
									<xsl:value-of  select="ihtkk:formatNumber($kd_tky/ct23)"/>
								</td>
							</tr>
							<tr>
								<td class="align-c">4</td>
								<td>Tổng thu nhập làm căn cứ tính giảm thuế</td>
								<td class="tkhaiheader">[24]</td>
								<td class="align-r">
									<xsl:value-of  select="ihtkk:formatNumber($kd_tky/ct24)"/>
								</td>
							</tr>
						</table>
						<br/>
						<tr>
							<td class="b">II. THU NHẬP VÀ SỐ THUẾ TẠM NỘP CỦA CÁ NHÂN TRONG NHÓM:</td>
						</tr>
						<tr>
							<td class="tkhaiheader">
								<table class="tkhai_table">
									<tr class="tkhaiheader">
										<td rowspan="2">S</td>
										<td rowspan="2">Họ và tên</td>
										<td rowspan="2">Mã số thuế </td>
										<td rowspan="2">Tỷ lệ chia TNCT</td>
										<td colspan="2">Thu nhập chịu thuế</td>
										<td rowspan="2">Các khoản giảm trừ</td>
										<td rowspan="2">Thu nhập tính thuế</td>
										<td rowspan="2">Thuế TNCN tạm tính</td>
										<td rowspan="2">Thuế TNCN được giảm</td>
										<td rowspan="2">Thuế TNCN tạm nộp</td>
									</tr>
									<tr class="tkhaiheader">
										<td>Tổng số</td>
										<td>Trong đó: thu nhập làm căn cứ tính giảm thuế</td>
									</tr>
									<tr class="tkhaiheader">
										<td>[25]</td>
										<td>[26]</td>
										<td>[27]</td>
										<td>[28]</td>
										<td>[29]</td>
										<td>[30]</td>
										<td>[31]</td>
										<td>[32]</td>
										<td>[33]</td>
										<td>[34]</td>
										<td>[35]</td>
									</tr>
									<xsl:for-each select="$tNhapCN/BangChiTietSoThuePNopCuaTungCNhan/ChiTietThuNhapKDoanh">
										<xsl:variable name="currentRows" select="position()"/>
										<tr>
											<td class="align-c">
												<xsl:value-of select="$currentRows"/>
											</td>
											<td>
												<xsl:value-of select="ct26"/>
											</td>
											<td class="align-c">
												<xsl:value-of select="ct27"/>
											</td>
											<td class="align-r">
												<xsl:value-of select="ct28"/>
											</td>
											<td class="align-r">
												<xsl:value-of select="ihtkk:formatNumber(ThuNhapChiuThue/ct29)"/>
											</td>
											<td class="align-r">
												<xsl:value-of select="ihtkk:formatNumber(ThuNhapChiuThue/ct30)"/>
											</td>
											<td class="align-r">
												<xsl:value-of select="ihtkk:formatNumber(ct31)"/>
											</td>
											<td class="align-r">
												<xsl:value-of select="ihtkk:formatNumber(ct32)"/>
											</td>
											<td class="align-r">
												<xsl:value-of select="ihtkk:formatNumber(ct33)"/>
											</td>
											<td class="align-r">
												<xsl:value-of select="ihtkk:formatNumber(ct34)"/>
											</td>
											<td class="align-r">
												<xsl:value-of select="ihtkk:formatNumber(ct35)"/>
											</td>
										</tr>
									</xsl:for-each>
									<tr>
										<td class="tkhaiheader" colspan="3">Tổng cộng</td>
										<td class="align-r">
											<xsl:value-of select="ihtkk:formatNumber($tNhapCN/ct36)"/>
										</td>
										<td class="align-r">
											<xsl:value-of select="ihtkk:formatNumber($tNhapCN/ct37)"/>
										</td>
										<td class="align-r">
											<xsl:value-of select="ihtkk:formatNumber($tNhapCN/ct38)"/>
										</td>
										<td class="align-r">
											<xsl:value-of select="ihtkk:formatNumber($tNhapCN/ct39)"/>
										</td>
										<td class="align-r">
											<xsl:value-of select="ihtkk:formatNumber($tNhapCN/ct40)"/>
										</td>
										<td class="align-r">
											<xsl:value-of select="ihtkk:formatNumber($tNhapCN/ct41)"/>
										</td>
										<td class="align-r">
											<xsl:value-of select="ihtkk:formatNumber($tNhapCN/ct42)"/>
										</td>
										<td class="align-r">
											<xsl:value-of select="ihtkk:formatNumber($tNhapCN/ct43)"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</td>
				</tr>
			
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>
</xsl:stylesheet>
