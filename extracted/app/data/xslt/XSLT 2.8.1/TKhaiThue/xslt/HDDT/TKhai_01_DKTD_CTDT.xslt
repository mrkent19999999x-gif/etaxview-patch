<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
<xsl:template match="/">
		<style type="text/css">
			body { font-family: 'Times New Roman', Times, serif !important; font-size:12pt; }
			.section-table {font-family: 'Times New Roman', Times, serif; width:100%; margin-bottom:10px; table-layout:fixed; word-wrap: break-word; border-collapse:collapse; }
			.bordered { border:1px solid #ccc; font-family: 'Times New Roman', Times, serif; }
			.bordered td, .bordered th { border:1px solid #ccc; padding:5px; font-family: 'Times New Roman', Times, serif; }
			.title-cell { font-weight:bold; padding:5px 0; font-family: 'Times New Roman', Times, serif; }
			.align-l { text-align:left; vertical-align:top; }
			.align-c { text-align:center; vertical-align:middle; }
		</style>

		<!-- Header -->
		<xsl:variable name="moTaBieuMau" select="''"/>
		<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:call-template name="tkhaiHeader_01_DKTD_CTDT">
			<xsl:with-param name="MSo" select="'01/ĐKTĐ-CTĐT'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="$ghiChuPL"/>
		</xsl:call-template>

		<div class="content">
			<!-- Section 1-3 -->
			<table class="section-table">
			<br/>
				<tr><td class="align-l">Tên người nộp thuế: <span><xsl:value-of select="TKhai/DLTKhai/TTChung/TNNT"/></span></td></tr>
				<tr><td class="align-l">Mã số thuế: <span><xsl:value-of select="TKhai/DLTKhai/TTChung/MST"/></span></td></tr>
				<tr><td class="align-l">Cơ quan thuế quản lý: <span><xsl:value-of select="TKhai/DLTKhai/TTChung/CQTQLy"/></span></td></tr>
				<tr><td class="align-l">Người liên hệ: <span><xsl:value-of select="TKhai/DLTKhai/TTChung/NLHe"/></span></td></tr>
				<tr><td class="align-l">Điện thoại liên hệ: <span><xsl:value-of select="TKhai/DLTKhai/TTChung/DTLHe"/></span></td></tr>
				<tr><td class="align-l">Địa chỉ liên hệ: <span><xsl:value-of select="TKhai/DLTKhai/TTChung/DCLHe"/></span></td></tr>
				<tr><td class="align-l">Thư điện tử: <span><xsl:value-of select="TKhai/DLTKhai/TTChung/DCTDTu"/></span></td></tr>
				<tr><td class="align-l">
					<xsl:text>Theo Nghị định số 70/2025/NĐ-CP ngày 20 tháng 3 năm 2025 của Chính phủ, chúng tôi/tôi thuộc đối tượng sử dụng chứng từ điện tử. Chúng tôi/tôi đăng ký/thay đổi thông tin đã đăng ký với cơ quan thuế về việc sử dụng chứng từ điện tử như sau:</xsl:text>
				</td></tr>

				<tr><td class="title-cell align-l">1. Đối tượng phát hành</td></tr>
				<tr><td class="align-l">
					<xsl:if test="TKhai/DLTKhai/NDTKhai/DTPHanh/TCCNPHanh ='1'">[X] Tổ chức, cá nhân phát hành</xsl:if>
					<xsl:if test="TKhai/DLTKhai/NDTKhai/DTPHanh/TCCNPHanh ='0'">[&#32;] Tổ chức, cá nhân phát hành</xsl:if><br/>
					<xsl:if test="TKhai/DLTKhai/NDTKhai/DTPHanh/CQTPHanh ='1'">[X] Cơ quan thuế phát hành</xsl:if>
					<xsl:if test="TKhai/DLTKhai/NDTKhai/DTPHanh/CQTPHanh ='0'">[&#32;] Cơ quan thuế phát hành</xsl:if><br/>
				</td></tr>

				<tr><td class="title-cell align-l">2. Loại hình sử dụng</td></tr>
				<tr>
					<td class="align-l">
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/CTTNCNhan ='1'">
							[X] Chứng từ điện tử khấu trừ thuế thu nhập cá nhân
						</xsl:if>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/CTTNCNhan ='0'">
							[&#32;] Chứng từ điện tử khấu trừ thuế thu nhập cá nhân
						</xsl:if><br/>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/CTKTTTMDTu ='1'">
							[X] Chứng từ điện tử khấu trừ thuế đối với hoạt động kinh doanh trên nền tảng thương mại điện tử, nền tảng số
						</xsl:if>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/CTKTTTMDTu ='0'">
							[&#32;] Chứng từ điện tử khấu trừ thuế đối với hoạt động kinh doanh trên nền tảng thương mại điện tử, nền tảng số
						</xsl:if><br/>
						&#160;&#160;&#160;&#160; Biên lai điện tử <br/>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/BLTPLPKIn ='1'">
							[X] Biên lai thu thuế, phí, lệ phí không in sẵn mệnh giá
						</xsl:if>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/BLTPLPKIn ='0'">
							[&#32;] Biên lai thu thuế, phí, lệ phí không in sẵn mệnh giá
						</xsl:if><br/>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/BLTPLPIn ='1'">
							[X] Biên lai thu thuế, phí, lệ phí in sẵn mệnh giá
						</xsl:if>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/BLTPLPIn ='0'">
							[&#32;] Biên lai thu thuế, phí, lệ phí in sẵn mệnh giá
						</xsl:if><br/>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/BLTTPLPhi ='1'">
							[X] Biên lai thu thuế, phí, lệ phí
						</xsl:if>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/LHSDung/BLTTPLPhi ='0'">
							[&#32;] Biên lai thu thuế, phí, lệ phí
						</xsl:if><br/>
					</td>
				</tr>

				<tr><td class="title-cell align-l">3. Hình thức gửi dữ liệu</td></tr>
				<tr>
					<td class="align-l">
						<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLCTDT/CDLQCCQT ='1'">
							a.[X] Trên Cổng thông tin điện tử của cơ quan thuế
						</xsl:if>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLCTDT/CDLQCCQT ='0'">
							a.[&#32;] Trên Cổng thông tin điện tử của cơ quan thuế
						</xsl:if><br/>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLCTDT/CDLQTCTN ='1'">
							b.[X] Thông qua tổ chức cung cấp dịch vụ hóa đơn điện tử
						</xsl:if>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLCTDT/CDLQTCTN ='0'">
							b.[&#32;] Thông qua tổ chức cung cấp dịch vụ hóa đơn điện tử
						</xsl:if><br/>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLCTDT/CDLQTCTNUT ='1'">
							c.[X] Thông qua tổ chức cung cấp dịch vụ hóa đơn điện tử được Tổng cục Thuế ủy thác
						</xsl:if>
						<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLCTDT/CDLQTCTNUT ='0'">
							c.[&#32;] Thông qua tổ chức cung cấp dịch vụ hóa đơn điện tử được Tổng cục Thuế ủy thác
						</xsl:if><br/>
					</td>
				</tr>
			</table>

			<!-- Section 4 -->
			<section class="title-cell align-l">
				<b>4. Danh sách chứng thư số sử dụng:</b>
			</section>
			<table class="section-table bordered">
				<!-- Header row 1 -->
				<tr>
					<td rowspan="2" class="align-c" style="width: 20px;"><b>STT</b></td>
					<td rowspan="2" colspan="3" class="align-c" style="width: 150px;">
						<b>Tên tổ chức cơ quan chứng thực/cấp/công nhận chữ ký số, chữ ký điện tử</b>
					</td>
					<td rowspan="2" colspan="3" class="align-c" style="width: 100px;">
						<b>Số sê-ri chứng thư</b>
					</td>
					<td colspan="2" class="align-c" style="width: 140px;">
						<b>Thời hạn sử dụng chứng thư số</b>
					</td>
					<td rowspan="2" class="align-c" style="width: 70px;">
						<b>Hình thức đăng ký (Thêm mới, gia hạn, ngừng sử dụng)</b>
					</td>
				</tr>
				<!-- Header row 2 -->
				<tr>
					<td class="align-c" style="width: 120px;"><b>Từ ngày</b></td>
					<td class="align-c" style="width: 120px;"><b>Đến ngày</b></td>
				</tr>

				<!-- Data rows -->
				<xsl:for-each select="TKhai/DLTKhai/NDTKhai/DSCTSSDung/CTS">
					<tr>
						<td class="align-c"><xsl:value-of select="position()" /></td>
						<td colspan="3" class="align-l"><xsl:value-of select="TTChuc"/></td>
						<td colspan="3" class="align-l"><xsl:value-of select="Seri"/></td>
						<td class="align-c">
							<xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/>
						</td>
						<td class="align-c">
							<xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/>
						</td>
						<td class="align-c">
							<xsl:choose>
								<xsl:when test="HThuc='1'">Thêm mới</xsl:when>
								<xsl:when test="HThuc='2'">Gia hạn</xsl:when>
								<xsl:when test="HThuc='3'">Ngừng sử dụng</xsl:when>
							</xsl:choose>
						</td>
					</tr>
				</xsl:for-each>
			</table>


			<xsl:if test="count(TKhai/DLTKhai/NDTKhai/DSDKUNhiem/DKUNhiem) > 0">
				<!-- Section 5 content -->
				<section class="title-cell align-l">
					<b>5. Đăng ký ủy nhiệm lập biên lai:</b>
				</section>
				<table class="section-table bordered">
					<tr>
						<td rowspan="2" class="align-c" style="width: 40px;"><b>STT</b></td>
						<td rowspan="2" colspan="1" class="align-c" style="width: 70px;"><b>Loại đăng ký ủy nhiệm</b></td>
						<td rowspan="2" colspan="1" class="align-c" style="width: 70px;"><b>Tên loại biên lai ủy nhiệm</b></td>
						<td rowspan="2" colspan="1" class="align-c" style="width: 80px;" ><b>Ký hiệu mẫu biên lai ủy nhiệm</b></td>
						<td rowspan="2" class="align-c" style="width: 70px;"><b>Ký hiệu biên lai ủy nhiệm</b></td>
						<td rowspan="2" class="align-c" style="width: 110px;"><b>Mã số thuế tổ chức được ủy nhiệm/tổ chức ủy nhiệm</b></td>
						<td rowspan="2" class="align-c" style="width: 130px;"><b>Tên tổ chức được ủy nhiệm/tổ chức ủy nhiệm</b></td>
						<td rowspan="2" class="align-c" style="width: 70px;"><b>Mục đích ủy nhiệm</b></td>
						<td colspan="2" class="align-c" style="width: 200px;"><b>Thời hạn ủy nhiệm</b></td>
						<td rowspan="2" class="align-c" style="width: 70px;"><b>Phương thức thanh toán biên lai ủy nhiệm</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Từ ngày</b></td>
						<td class="align-c"><b>Đến ngày</b></td>
					</tr>

					<xsl:for-each select="TKhai/DLTKhai/NDTKhai/DSDKUNhiem/DKUNhiem">
						<xsl:variable name="currentIndex" select="position()" />
						<xsl:variable name="loaiDKUN" select="LDKUNhiem" />
						<xsl:variable name="phuongThucTT" select="PThuc" />
						<xsl:variable name="tenLoaiCT" select="TLCTu" />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentIndex"/></td>
							<td colspan="1" class="align-l">
								<xsl:choose>
									<xsl:when test="$loaiDKUN = 1">Ủy nhiệm</xsl:when>
									<xsl:when test="$loaiDKUN = 2">Nhận ủy nhiệm</xsl:when>
									<xsl:otherwise><xsl:value-of select="$loaiDKUN"/></xsl:otherwise>
								</xsl:choose>
							</td>
							<td colspan="1" class="align-l">
								<xsl:value-of select="$tenLoaiCT"/>
							</td>
							<td colspan="1" class="align-l"><xsl:value-of select="KHMCTu"/></td>
							<td class="align-l"><xsl:value-of select="KHCTu"/></td>
							<td class="align-l"><xsl:value-of select="MST"/></td>
							<td class="align-l"><xsl:value-of select="TTChuc"/></td>
							<td class="align-l"><xsl:value-of select="MDich"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay, 'dd/mm/yyyy')"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay, 'dd/mm/yyyy')"/></td>
							<td class="align-l">
								<xsl:value-of select="$phuongThucTT"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</xsl:if>


			<div style="width: 100%;">
				<xsl:call-template name="tkhaiFooter_01_DKTD_CTDT"/>
				<div id="sigDiv"></div>
			</div>

		</div>
	</xsl:template>
</xsl:stylesheet>