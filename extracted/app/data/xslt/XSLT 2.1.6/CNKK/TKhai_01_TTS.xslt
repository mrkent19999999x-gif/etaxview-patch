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
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01TTS">
		<xsl:with-param name="mauTKhai"   select="'01/TTS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cá nhân có hoạt động cho thuê tài sản hoặc tổ chức khai thay)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
                      	<div> <b>A. PHẦN CÁ NHÂN KÊ KHAI NGHĨA VỤ THUẾ</b> </div>	
							<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Chỉ tiêu</b></td>
										<td class="align-c"><b>Mã chỉ tiêu</b></td>
										<td class="align-c"><b>Số tiền</b></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Tổng doanh thu phát sinh trong kỳ</td>
										<td class="align-c"><b>[28]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct28)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Tổng doanh thu tính thuế </td>
										<td class="align-c"><b>[29]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct29)"/></td>
									</tr>

									<tr>
										<td class="align-c">3</td>
										<td>Tổng số thuế GTGT phải nộp</td>
										<td class="align-c"><b>[30]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct30)"/></td>
									</tr>
									<tr>
										<td class="align-c">4</td>
										<td>Tổng số thuế TNCN phát sinh trong kỳ</td>
										<td class="align-c"><b>[31]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct31)"/></td>
									</tr>
									<tr>
										<td class="align-c">5</td>
										<td>Doanh thu làm căn cứ tính giảm thuế</td>
										<td class="align-c"><b>[32]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct32)"/></td>
									</tr>
									<tr>
										<td class="align-c">6</td>
										<td>Số thuế TNCN được giảm</td>
										<td class="align-c"><b>[33]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct33)"/></td>
									</tr>
									<tr>
										<td class="align-c">7</td>
										<td>Tiền phạt, bồi thường mà bên cho thuê nhận được theo thoả thuận tại hợp đồng (nếu có)</td>
										<td class="align-c"><b>[34]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct34)"/></td>
									</tr>
									<tr>
										<td class="align-c">8</td>
										<td>Tổng số thuế TNCN phải nộp từ tiền nhận bồi thường, phạt vi phạm hợp đồng (nếu có)</td>
										<td class="align-c"><b>[35]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct35)"/></td>
									</tr>
									<tr>
										<td class="align-c">9</td>
										<td><b>Tổng số thuế TNCN phải nộp [36]=[31]-[33]+[35]</b></td>
										<td class="align-c"><b>[36]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct36)"/></td>
									</tr>
								</table>
								<div><i>(TNCN: Thu nhập cá nhân; GTGT: Giá trị gia tăng)</i></div>
							<div><b>B.  PHẦN CƠ QUAN THUẾ GHI THÔNG TIN HỖ TRỢ NGƯỜI NỘP THUẾ THỰC HIỆN NGHĨA VỤ THUẾ </b></div>
							<div>Đề nghị Ngân hàng/Kho bạc Nhà nước <b>[37]</b> <xsl:value-of select="$tkchinh/CQTGhiThongTin/ct37"/> trích tài khoản số <b>[38]</b>: <xsl:value-of select="$tkchinh/CQTGhiThongTin/ct38"/> hoặc thu tiền mặt để nộp NSNN vào KBNN <xsl:value-of select="($tkchinh/CQTGhiThongTin/tenKhoBacNN)"/></div>
							<div>Cơ quan thuế quản lý khoản thu: <xsl:value-of select="$tkchinh/CQTGhiThongTin/tenCQTQLyKThu"/></div>
							<div>Tổng số thuế phải nộp NSNN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/CQTGhiThongTin/soTienNopNSNN)"/> đồng. Trong đó:</div>
							<div>- Số thuế GTGT (tiểu mục 1701): <xsl:value-of select="ihtkk:formatNumber($tkchinh/CQTGhiThongTin/soThueGTGT)"/> đồng.</div>
							<div>- Số thuế TNCN (tiểu mục 1014): <xsl:value-of select="ihtkk:formatNumber($tkchinh/CQTGhiThongTin/soThueTNCN)"/> đồng.</div>
                      
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter">
	</xsl:call-template>
	</xsl:template>		
</xsl:stylesheet>
