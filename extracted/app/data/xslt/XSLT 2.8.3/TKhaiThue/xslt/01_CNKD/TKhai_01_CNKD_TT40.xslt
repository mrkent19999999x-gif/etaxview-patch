<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 40/2021/TT-BTC ngày 01/6/2021 của Bộ trưởng Bộ Tài Chính'" />
		 <xsl:call-template name="tkhaiHeader_01_CNKD_283">
		<xsl:with-param name="mauTKhai"   select="'01/CNKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<!--<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cá nhân kinh doanh nộp thuế theo phương pháp khoán và cá nhân kinh doanh nộp thuế theo từng lần phát sinh )'"/>-->
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
                      	<div> <b>A. KÊ KHAI THUẾ GIÁ TRỊ GIA TĂNG (GTGT), THUẾ THU NHẬP CÁ NHÂN (TNCN)</b> </div>	
							<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2" ><b>STT</b></td>
							<td class="align-c " rowspan="2"><b>Nhóm ngành nghề</b></td>
							<td class="align-c" rowspan="2"><b>Mã chỉ tiêu</b></td>
							<td class="align-c" colspan ='2'><b>Thuế GTGT</b></td>
							<td class="align-c" colspan ='2'><b>Thuế TNCN</b></td>
						</tr>
						<tr>
								<td class="align-c">Doanh thu <br/> (a) </td>
								<td class="align-c">Số thuế <br/>(b)</td>
								<td class="align-c">Doanh thu <br/>(c) </td>
								<td class="align-c">Số thuế  <br/>(d)</td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td>Phân phối, cung cấp hàng hóa </td>
							<td class="align-c"><b>[28]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct28)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct28)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct28)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct28)"/></td>
						</tr>
						<tr>
							<td class="align-c">(2)</td>
							<td>Dịch vụ, xây dựng không bao thầu  nguyên vật liệu</td>
							<td class="align-c"><b>[29]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct29)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct29)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct29)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct29)"/></td>
						</tr>
						<tr>
							<td class="align-c">(3)</td>
							<td>Sản xuất, vận tải, dịch vụ có gắn với hàng hóa, xây dựng có bao thầu nguyên vật liệu</td>
							<td class="align-c"><b>[30]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct30)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct30)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct30)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct30)"/></td>
						</tr>
						<tr>
							<td class="align-c">(4)</td>
							<td>Hoạt động kinh doanh khác</td>
							<td class="align-c"><b>[31]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct31)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct31)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct31)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct31)"/></td>
						</tr>
						<tr>
							<td class="align-c"></td>
							<td class="align-c"><b>Tổng cộng:</b></td>
							<td class="align-c"><b>[32]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct32)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct32)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct32)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct32)"/></b></td>
						</tr>
					</table>
					<br/>
				<!--<div> <b>Xác định nghĩa vụ thuế TNCN phải nộp:</b> </div>	<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>	
					<table class="tkhai_table">
						<tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Chỉ tiêu</b></td>
							<td class="align-c"><b>Mã Chỉ tiêu</b></td>
							<td class="align-c"><b>Số tiền</b></td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Doanh thu tính thuế TNCN do kinh doanh trong khu kinh tế</td>
							<td class="align-c"><b>[35]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/XDinhNVuThue/ct35)"/></td>
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td>Số thuế TNCN được giảm trong khu kinh tế</td>
							<td class="align-c"><b>[36]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/XDinhNVuThue/ct36)"/></td> 
						</tr>
						<tr>
							<td class="align-c">3</td>
							<td>Số thuế TNCN phải nộp [37]=[34d]-[36]</td>
							<td class="align-c"><b>[37]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/XDinhNVuThue/ct37)"/></td>
						</tr>
					</table>
					<br/>-->
					
				<div> <b>B. KÊ KHAI THUẾ TIÊU THỤ ĐẶC BIỆT (TTĐB)</b> </div>
					<br/>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						<tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Hàng hoá, dịch vụ chịu thuế TTĐB</b></td>
							<td class="align-c"><b>Mã chỉ tiêu</b></td>
							<td class="align-c"><b>Đơn vị tính</b></td>
							<td class="align-c"><b>Doanh thu  tính thuế TTĐB</b></td>
							<td class="align-c"><b>Thuế suất</b></td>
							<td class="align-c"><b>Số thuế</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>
						</tr>
						<xsl:for-each select="$tkchinh/KKhaiThueTTDB/CTietKKhaiThueTTDB">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-c"><xsl:value-of select="ct4"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ct6"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		<tr>
						<td></td>
						<td class="align-c"><b>Tổng cộng:</b></td>
						<td class="align-c"><b>[33]</b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThueTTDB/tong_ct5)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThueTTDB/tong_ct7)"/></b></td>
					</tr>
					</table>	<br/>	
							
				<div> <b>C. KÊ KHAI THUẾ/PHÍ BẢO VỆ MÔI TRƯỜNG HOẶC THUẾ TÀI NGUYÊN  </b> </div>	<br/>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						<table class="tkhai_table">
							<tr>
								<td class="align-c"><b>STT</b></td>
								<td class="align-c"><b>Tài nguyên, hàng hóa, sản phẩm</b></td>
								<td class="align-c"><b>Mã chỉ tiêu</b></td>
								<td class="align-c"><b>Đơn vị tính</b></td>
								<td class="align-c"><b>Sản lượng/ Số lượng</b></td>
								<td class="align-c"><b>Giá tính thuế tài nguyên/ mức thuế hoặc phí BVMT</b></td>
								<td class="align-c"><b>Thuế suất</b></td>
								<td class="align-c"><b>Số thuế</b></td>
							</tr>
							<tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
								<td class="align-c">(7)</td>
								<td class="align-c">(8)</td>
							</tr>
							<tr>
								<td class="align-c"><b>1</b></td>
								<td colspan="7"><b>Khai thuế tài nguyên</b></td>
							</tr>
						<xsl:for-each select="$tkchinh/KKhaiTBVMT_TN/ThueTaiNguyen/CTietThueTaiNguyen">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-c"><xsl:value-of select="ct4"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		<tr>
						<td class="align-c" colspan="2"><b>Tổng cộng</b></td>
						<td class="align-c"><b>[34]</b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTBVMT_TN/ThueTaiNguyen/tongCong)"/></b></td>
					</tr>
					<tr>
						<td class="align-c"><b>2</b></td>
						<td colspan="7"><b>Khai thuế bảo vệ môi trường</b></td>
					</tr>
						<xsl:for-each select="$tkchinh/KKhaiTBVMT_TN/ThueBVMT/CTietThueBVMT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-c"><xsl:value-of select="ct4"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		<tr>
						<td class="align-c" colspan="2"><b>Tổng cộng</b></td>
						<td class="align-c"><b>[35]</b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTBVMT_TN/ThueBVMT/tongCong)"/></b></td>
					</tr>
					<tr>
						<td class="align-c"><b>3</b></td>
						<td colspan="7"><b>Khai phí bảo vệ môi trường</b></td>
					</tr>
						<xsl:for-each select="$tkchinh/KKhaiTBVMT_TN/PhiBVMT/CTietPhiBVMT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-c"><xsl:value-of select="ct4"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		<tr>
						<td class="align-c" colspan="2"><b>Tổng cộng</b></td>
						<td class="align-c"><b>[36]</b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTBVMT_TN/PhiBVMT/tongCong)"/></b></td>
					</tr>
					
				
						</table>
							<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		<xsl:call-template name="tkhaiFooter"/>
		</div>	
		</div>
		
					</xsl:template>	

</xsl:stylesheet>
