<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="'(Kèm theo Tờ khai mẫu số 04/ĐTV-TNCN áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cho nhiều cá nhân)'"/>
	  <!-- Phụ lục 04-1/DTV-TNCN TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_04_1_DTV_TNCN"/>	
		<xsl:variable name="pl04_1_DTV_TNCN" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_04_1_DTV_TNCN'/>
		<xsl:call-template name="tkhaiHeader_PL_04_1_DTV_TNCN">
			<xsl:with-param name="mauTKhai"   select="'04-1/DTV-TNCN'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai mẫu số 04/ĐTV-TNCN áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cho nhiều cá nhân)'"/>
		</xsl:call-template>
		
		<div class="ndungtkhai_div">
			<div class="content">
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Họ và tên NNT</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
							<td class="align-c" rowspan="2"><b>Số CMND/ CCCD Hộ chiếu</b></td>
							<td class="align-c" colspan="2"><b>Tổ chức phát hành</b></td>
							<td class="align-c" rowspan="2"><b>Mã chứng khoán</b></td>
							<td class="align-c" rowspan="2"><b>Mệnh giá chứng khoán </b></td>
							<td class="align-c" rowspan="2"><b>Số lượng chứng khoán</b></td>
							<td class="align-c" rowspan="2"><b>Tổng giá trị cổ tức (hoặc lợi tức) được chia theo mệnh giá</b></td>
							<td class="align-c" rowspan="2"><b>Tổng giá trị theo giá sổ sách kế toán (hoặc theo giá thị trường)</b></td>
							<td class="align-c" rowspan="2"><b>Thuế phải nộp</b></td>	
							<td class="align-c" rowspan="2"><b>Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Tên tổ chức phát hành</b></td>
							<td class="align-c"><b>Mã số thuế tổ chức phát hành</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10a]</b></td>
							<td class="align-c"><b>[10b]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17]</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>I</b></td>
							<td class="align-l" colspan="7"><b>Cá nhân nhận cổ tức bằng chứng khoán</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanCoTucChungKhoan/ct18)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanCoTucChungKhoan/ct19)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanCoTucChungKhoan/ct20)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanCoTucChungKhoan/ct21)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanCoTucChungKhoan/ct22)"/></b></td>
						</tr>
						<xsl:for-each select="$pl04_1_DTV_TNCN/NhanCoTucChungKhoan/NDungNhanCoTucChungKhoan">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct07_hoTen"/></td>
								<td class="align-c"><xsl:value-of select="ct08_mst"/></td>
								<td class="align-c"><xsl:value-of select="ct09_cmt"/></td>
								<td class="align-l"><xsl:value-of select="ToChucPhatHanh/ct10_ten"/></td>
								<td class="align-c"><xsl:value-of select="ToChucPhatHanh/ct10_ma"/></td>
								<td class="align-c"><xsl:value-of select="ct11_maChungKhoan"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
								<td class="align-c">
									<xsl:if test="ct17= 'true'"> [X]</xsl:if>
									<xsl:if test="ct17= 'false'">[&#32;]</xsl:if>
								</td>
							</tr>
						</xsl:for-each>					 											
						<tr>
							<td class="align-c"><b>II</b></td>
							<td class="align-l" colspan="7"><b>Cá nhân là cổ đông hiện hữu nhận thưởng bằng chứng khoán</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanThuongChungKhoan/ct23)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanThuongChungKhoan/ct24)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanThuongChungKhoan/ct25)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanThuongChungKhoan/ct26)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/NhanThuongChungKhoan/ct27)"/></b></td>
						</tr>
						<xsl:for-each select="$pl04_1_DTV_TNCN/NhanThuongChungKhoan/NDungNhanThuongChungKhoan">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct07_hoTen"/></td>
								<td class="align-c"><xsl:value-of select="ct08_mst"/></td>
								<td class="align-c"><xsl:value-of select="ct09_cmt"/></td>
								<td class="align-l"><xsl:value-of select="ToChucPhatHanh/ct10_ten"/></td>
								<td class="align-c"><xsl:value-of select="ToChucPhatHanh/ct10_ma"/></td>
								<td class="align-c"><xsl:value-of select="ct11_maChungKhoan"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
								<td class="align-c">
									<xsl:if test="ct17= 'true'"> [X]</xsl:if>
									<xsl:if test="ct17= 'false'">[&#32;]</xsl:if>
								</td>
							</tr>
						</xsl:for-each>	
						<tr>
							<td class="align-c"><b>III</b></td>
							<td class="align-l" colspan="8"><b>Cá nhân được ghi nhận phần vốn tăng thêm do lợi tức ghi tăng vốn</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/LoiTucGhiTangVon/ct28)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/LoiTucGhiTangVon/ct29)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/LoiTucGhiTangVon/ct30)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_DTV_TNCN/LoiTucGhiTangVon/ct31)"/></b></td>
						</tr>
						<xsl:for-each select="$pl04_1_DTV_TNCN/LoiTucGhiTangVon/NDungLoiTucGhiTangVon">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct07_hoTen"/></td>
								<td class="align-c"><xsl:value-of select="ct08_mst"/></td>
								<td class="align-c"><xsl:value-of select="ct09_cmt"/></td>
								<td class="align-l"><xsl:value-of select="ToChucPhatHanh/ct10_ten"/></td>
								<td class="align-c"><xsl:value-of select="ToChucPhatHanh/ct10_ma"/></td>
								<td class="align-c">\</td>
								<td class="align-c">\</td>
								<td class="align-c">\</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
								<td class="align-c">
									<xsl:if test="ct17= 'true'"> [X]</xsl:if>
									<xsl:if test="ct17= 'false'">[&#32;]</xsl:if>
								</td>
							</tr>
						</xsl:for-each>	
					</table>
			</div>	
		</div>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>		  
					<div class="ghichu">   
						<xsl:call-template name="tkhaiFooter_TT80"/>
					</div>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

