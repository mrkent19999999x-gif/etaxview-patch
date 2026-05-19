<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="'(Kèm theo tờ khai 04/CNV-TNCN Áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cho nhiều cá nhân)'"/>
	  <!-- Phụ lục 04-1/CNV-TNCN TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_04_1_CNV_TNCN"/>	
		<xsl:variable name="pl04_1_CNV_TNCN" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_04_1_CNV_TNCN'/>
		<xsl:call-template name="tkhaiHeader_PL_04_1_CNV_TNCN">
			<xsl:with-param name="mauTKhai"   select="'04-1/CNV-TNCN'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN CHUYỂN NHƯỢNG VỐN'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai 04/CNV-TNCN Áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cho nhiều cá nhân)'"/>
	    </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<tr>
					<br></br>
					<td><b>I. CHUYỂN NHƯỢNG VỐN GÓP</b></td>
				</tr>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                <table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"><b>STT</b></td>
						<td class="align-c" colspan="3"><b>Thông tin cá nhân chuyển nhượng</b></td>
						<td class="align-c" colspan="3"><b>Thông tin tổ chức, cá nhân nhận chuyển nhượng</b></td>
						<td class="align-c" colspan="2"><b>Hợp đồng chuyển nhượng</b></td>
						<td class="align-c" rowspan="2"><b>Giá chuyển nhượng</b></td>
						<td class="align-c" rowspan="2"><b>Giá vốn của phần vốn góp</b></td>
						<td class="align-c" rowspan="2"><b>Chi phí chuyển nhượng</b></td>
						<td class="align-c" rowspan="2"><b>Thu nhập tính thuế từ chuyển nhượng vốn góp</b></td>
						<td class="align-c" rowspan="2"><b>Số thuế TNCN phải nộp</b></td>
						<td class="align-c" rowspan="2"><b>Số thuế được miễn giảm theo Hiệp định tránh đánh thuế hai lần</b></td>
						<td class="align-c" rowspan="2"><b>Số thuế còn phải nộp</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Họ và tên NNT</b></td>
						<td class="align-c"><b>Mã số thuế</b></td>
						<td class="align-c"><b>Số CMND/Hộ chiếu/ CCCD</b> (trường hợp chưa có mã số thuế)</td>
						<td class="align-c"><b>Tên Tổ chức, cá nhân</b></td>
						<td class="align-c"><b>Mã số thuế</b></td>
						<td class="align-c"><b>Số CMND/Hộ chiếu/ CCCD</b> (trường hợp chưa có mã số thuế)</td>
						<td class="align-c"><b>Số</b></td>
						<td class="align-c"><b>Ngày/ tháng/năm</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>[06]</b></td>
						<td class="align-c"><b>[07]</b></td>
						<td class="align-c"><b>[08]</b></td>
						<td class="align-c"><b>[09]</b></td>
						<td class="align-c"><b>[10]</b></td>
						<td class="align-c"><b>[11]</b></td>
						<td class="align-c"><b>[12]</b></td>
						<td class="align-c"><b>[13]</b></td>
						<td class="align-c"><b>[14]</b></td>
						<td class="align-c"><b>[15]</b></td>
						<td class="align-c"><b>[16]</b></td>
						<td class="align-c"><b>[17]</b></td>
						<td class="align-c"><b>[18]=[15]-[16]-[17]</b></td>
						<td class="align-c"><b>[19]</b></td>
						<td class="align-c"><b>[20]</b></td>
						<td class="align-c"><b>[21]= [19]-[20]</b></td>
					</tr>
					<xsl:for-each select="$pl04_1_CNV_TNCN/ChuyenNhuongVonGop/NDungChuyenNhuongVonGop">
						<xsl:variable name="currentRows" select='position()'/>
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="CaNhanChuyenNhuong/ct07_hoTen"/></td>
							<td class="align-l"><xsl:value-of select="CaNhanChuyenNhuong/ct08_mst"/></td>
							<td class="align-l"><xsl:value-of select="CaNhanChuyenNhuong/ct09_cmt"/></td>
							<td class="align-l"><xsl:value-of select="TCCNNhanChuyenNhuong/ct10_hoTen"/></td>
							<td class="align-l"><xsl:value-of select="TCCNNhanChuyenNhuong/ct11_mst"/></td>
							<td class="align-l"><xsl:value-of select="TCCNNhanChuyenNhuong/ct12_cmt"/></td>
							<td class="align-l"><xsl:value-of select="HopDongChuyenNhuong/ct13_so"/></td>
							<td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(HopDongChuyenNhuong/ct14_ngay,'dd/mm/yyyy')"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct20)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct21)"/></td>
						</tr>
					</xsl:for-each>						 											
						<tr>
							<td></td>
							<td class="align-c" colspan="8"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongVonGop/ct22)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongVonGop/ct23)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongVonGop/ct24)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongVonGop/ct25)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongVonGop/ct26)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongVonGop/ct27)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongVonGop/ct28)"/></b></td>
  						</tr>
				</table>
					<br></br>
				<tr>
					<td><b>II. CHUYỂN NHƯỢNG CHỨNG KHOÁN</b></td>
				</tr>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" colspan="3"><b>Thông tin cá nhân chuyển nhượng</b></td>
							<td class="align-c" colspan="3"><b>Thông tin tổ chức, cá nhân nhận chuyển nhượng</b></td>
							<td class="align-c" colspan="2"><b>Hợp đồng chuyển nhượng</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng chứng khoán</b></td>
							<td class="align-c" rowspan="2"><b>Giá chuyển nhượng</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TNCN phải nộp</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế được miễn giảm theo Hiệp định tránh đánh thuế hai lần</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế còn phải nộp</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Họ và tên NNT</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Số CMND/Hộ chiếu/ CCCD</b> (trường hợp chưa có mã số thuế)</td>
							<td class="align-c"><b>Tên Tổ chức, cá nhân</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Số CMND/Hộ chiếu/ CCCD</b> (trường hợp chưa có mã số thuế)</td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày/ tháng/năm</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[29]</b></td>
							<td class="align-c"><b>[30]</b></td>
							<td class="align-c"><b>[31]</b></td>
							<td class="align-c"><b>[32]</b></td>
							<td class="align-c"><b>[33]</b></td>
							<td class="align-c"><b>[34]</b></td>
							<td class="align-c"><b>[35]</b></td>
							<td class="align-c"><b>[36]</b></td>
							<td class="align-c"><b>[37]</b></td>
							<td class="align-c"><b>[38]</b></td>
							<td class="align-c"><b>[39]</b></td>
							<td class="align-c"><b>[40]</b></td>
							<td class="align-c"><b>[41]</b></td>
							<td class="align-c"><b>[42]= [40]-[41]</b></td>
						</tr>
						<xsl:for-each select="$pl04_1_CNV_TNCN/ChuyenNhuongChungKhoan/NDungChuyenNhuongChungKhoan">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="CaNhanChuyenNhuong/ct30_hoTen"/></td>
							  <td class="align-l"><xsl:value-of select="CaNhanChuyenNhuong/ct31_mst"/></td>
							  <td class="align-l"><xsl:value-of select="CaNhanChuyenNhuong/ct32_cmt"/></td>
							  <td class="align-l"><xsl:value-of select="CNhanNhanChuyenNhuong/ct33_hoTen"/></td>
							  <td class="align-l"><xsl:value-of select="CNhanNhanChuyenNhuong/ct34_mst"/></td>
							  <td class="align-l"><xsl:value-of select="CNhanNhanChuyenNhuong/ct35_cmt"/></td>
							  <td class="align-l"><xsl:value-of select="HopDongChuyenNhuong/ct36_so"/></td>
							  <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(HopDongChuyenNhuong/ct37_ngay,'dd/mm/yyyy')"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct38)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct39)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct40)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct41)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct42)"/></td>
							</tr>
						</xsl:for-each>						 											
						<tr>
							<td></td>
							<td class="align-c" colspan="9"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongChungKhoan/ct43)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongChungKhoan/ct44)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongChungKhoan/ct45)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04_1_CNV_TNCN/ChuyenNhuongChungKhoan/ct46)"/></b></td>
						</tr>
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

