<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày 15/6/2015 của Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'01/BC-SDHĐ-CNKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân nộp thuế theo phương pháp khoán)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
                      	<div> <b>A. TÌNH HÌNH SỬ DỤNG HOÁ ĐƠN BÁN HÀNG</b> </div>	<br/>
						 <table class="tkhai_table">
								<tr>
									<td class="align-c" rowspan="4"><b>STT</b></td>
									<td class="align-c" rowspan="4"><b>Ký hiệu mẫu hoá đơn</b></td>
									<td class="align-c" rowspan="4"><b>Ký hiệu hoá đơn</b></td>
									<td class="align-c" colspan="5"><b>Số tồn đầu kỳ, mua/phát hành trong kỳ</b></td>
									<td class="align-c" colspan="10"><b>Số sử dụng, xóa bỏ, mất, hủy trong kỳ</b></td>
									<td class="align-c" colspan="3" rowspan="3"><b>Tồn cuối kỳ</b></td>
								</tr>
								<tr>
									<td class="align-c" rowspan="3"><b>Tổng số</b></td>
									<td class="align-c" rowspan="2" colspan="2"><b>Số tồn đầu kỳ</b></td>
									<td class="align-c" colspan="2" rowspan="2"><b>Số mua/phát hành trong kỳ</b></td>
									<td class="align-c" colspan="3" rowspan="2"><b>Tổng số sử dụng, xóa bỏ, mất, hủy</b></td>
									<td class="align-c" colspan="7"><b>Trong đó</b></td>
								</tr>
								<tr>
									<td class="align-c" rowspan="2"><b>Số lượng đã sử dụng</b></td>
									<td class="align-c" colspan="2"><b>Xóa bỏ</b></td>
									<td class="align-c" colspan="2"><b>Mất</b></td>
									<td class="align-c" colspan="2"><b>Huỷ</b></td>

								</tr>
								<tr>
									<td class="align-c"><b>Từ số</b></td>
									<td class="align-c"><b>Đến số</b></td>
									<td class="align-c"><b>Từ số</b></td>
									<td class="align-c"><b>Đến số</b></td>
									<td class="align-c"><b>Từ số</b></td>
									<td class="align-c"><b>Đến số</b></td>
									<td class="align-c"><b>Cộng</b></td>
									<td class="align-c"><b>Số lượng</b></td>
                                    <td class="align-c"><b>Số</b></td>
									<td class="align-c"><b>Số lượng</b></td>
									<td class="align-c"><b>Số</b></td>
									<td class="align-c"><b>Số lượng</b></td>
									<td class="align-c"><b>Số</b></td>
									<td class="align-c"><b>Từ số</b></td>
									<td class="align-c"><b>Đến số</b></td>
									<td class="align-c"><b>Số lượng</b></td>
								</tr>
								<tr>
									<td class="align-c"><b>[05]</b></td>
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
									<td class="align-c"><b>[18]</b></td>
									<td class="align-c"><b>[19]</b></td>
									<td class="align-c"><b>[20]</b></td>
									<td class="align-c"><b>[21]</b></td>
									<td class="align-c"><b>[22]</b></td>
									<td class="align-c"><b>[23]</b></td>
									<td class="align-c"><b>[24]</b></td>
									<td class="align-c"><b>[25]</b></td>
								</tr>
								<xsl:for-each select="$tkchinh/THinhSDungHDonBH/CTietSDHDon">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct06"/></td>
								<td class="align-l"><xsl:value-of select="ct07"/></td>
								<td class="align-l"><xsl:value-of select="ct08"/></td>
								<td class="align-l"><xsl:value-of select="ct09"/></td>
								<td class="align-l"><xsl:value-of select="ct10"/></td>
								<td class="align-l"><xsl:value-of select="ct11"/></td>
								<td class="align-l"><xsl:value-of select="ct12"/></td>
								<td class="align-l"><xsl:value-of select="ct13"/></td>
								<td class="align-l"><xsl:value-of select="ct14"/></td>
								<td class="align-l"><xsl:value-of select="ct15"/></td>
								<td class="align-l"><xsl:value-of select="ct16"/></td>
								<td class="align-l"><xsl:value-of select="ct17"/></td>
								<td class="align-l"><xsl:value-of select="ct18"/></td>
								<td class="align-l"><xsl:value-of select="ct19"/></td>
								<td class="align-l"><xsl:value-of select="ct20"/></td>
								<td class="align-l"><xsl:value-of select="ct21"/></td>
								<td class="align-l"><xsl:value-of select="ct22"/></td>
								<td class="align-l"><xsl:value-of select="ct23"/></td>
								<td class="align-l"><xsl:value-of select="ct24"/></td>
								<td class="align-l"><xsl:value-of select="ct25"/></td>
	         				</tr>	
	         		</xsl:for-each>	
							</table> <br/>
                     
					
				<div> <b>B. CHI TIẾT DOANH THU TÍNH THUẾ THEO HOÁ ĐƠN </b> </div>	<br/>
				<div><b>I. KHAI THUẾ GTGT, TNCN</b></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"><b>STT</b></td>
						<td class="align-c" rowspan="2"><b>Nội dung</b></td>
						<td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
						<td class="align-c" rowspan="2"><b>Doanh thu theo hoá đơn  <br/> (a)</b></td>
						<td class="align-c" colspan="2"><b>Số thuế phải nộp</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Thuế GTGT <br/> (b)</b></td>
						<td class="align-c"><b>Thuế TNCN <br/> (c)</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Hoạt động phân phối, cung cấp hàng hoá</td>
						<td class="align-c"><b>[26]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/DThuTheoHDon/ct26)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueGTGT/ct26)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueTNCN/ct26)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Hoạt động dịch vụ, xây dựng không bao thầu nguyên vật liệu</td>
						<td class="align-c"><b>[27]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/DThuTheoHDon/ct27)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueGTGT/ct27)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueTNCN/ct27)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Hoạt động sản xuất, vận tải, dịch vụ có gắn với hàng hoá, xây dựng có bao thầu nguyên vật liệu</td>
						<td class="align-c"><b>[28]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/DThuTheoHDon/ct28)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueGTGT/ct28)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueTNCN/ct28)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Hoạt động kinh doanh khác</td>
						<td class="align-c"><b>[29]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/DThuTheoHDon/ct29)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueGTGT/ct29)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueTNCN/ct29)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Tổng cộng</td>
						<td class="align-c"><b>[30]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/DThuTheoHDon/ct30)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueGTGT/ct30)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueGTGT_TNCN/ThueTNCN/ct30)"/></td>
					</tr>
				</table> <br/>
				<div><b>II. KHAI CÁC LOẠI THUẾ KHÁC</b></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Nội dung</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Doanh thu, sản lượng, số lượng tính thuế <br/>(a)</b></td>
                        <td class="align-c"><b>Số thuế phải nộp <br/>(a)</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Khai thuế TTĐB</td>
						<td class="align-c"><b>[31]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueKhac/CT31/doanhThu)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueKhac/CT31/soThuePNop)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Khai thuế tài nguyên</td>
						<td class="align-c"><b>[32]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueKhac/CT32/doanhThu)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueKhac/CT32/soThuePNop)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Khai thuế bảo vệ môi trường</td>
						<td class="align-c"><b>[33]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueKhac/CT33/doanhThu)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueKhac/CT33/soThuePNop)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Khai phí bảo vệ môi trường</td>
						<td class="align-c"><b>[34]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueKhac/CT34/doanhThu)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CTietDThuTThue/KThueKhac/CT34/soThuePNop)"/></td>
					</tr>
				</table>
				<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
