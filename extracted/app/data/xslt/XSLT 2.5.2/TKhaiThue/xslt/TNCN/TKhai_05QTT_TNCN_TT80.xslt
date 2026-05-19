<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="ktru" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NVuKhauTruThue' />
		<xsl:variable name="qtoan" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NVuQToanThay' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_tt80">
		<xsl:with-param name="mauTKhai"   select="'05/QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với tổ chức, cá nhân trả thu nhập chịu thuế từ tiền lương, tiền công)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
           <div class="content">
		    

                      	<div> <b>I. NGHĨA VỤ KHẤU TRỪ THUẾ CỦA TỔ CHỨC, CÁ NHÂN TRẢ THU NHẬP</b> </div>	
							<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Chỉ tiêu</b></td>
										<td class="align-c"><b>Mã chỉ tiêu</b></td>
										<td class="align-c"><b>Đơn vị tính</b></td>
										<td class="align-c"><b>Số người/ Số tiền</b></td>
									</tr>
									<tr>
										<td class="align-c" rowspan="2"><b>1</b></td>
										<td><b>Tổng số người lao động:</b></td>
										<td class="align-c"><b>[16]</b></td>
										<td class="align-c">Người</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct16)" /></td>
									</tr>
									<tr>
										<td>Trong đó: Cá nhân cư trú có hợp đồng lao động </td>
										<td class="align-c"><b>[17]</b></td>
										<td class="align-c">Người</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct17)" /></td>
									</tr>
									<tr>
										<td class="align-c"><b>2</b></td>
										<td><b>Tổng số cá nhân đã khấu trừ thuế [18]=[19]+[20]</b></td>
										<td class="align-c"><b>[18]</b></td>
										<td class="align-c">Người</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct18)" /></td>
									</tr>
									<tr>
										<td class="align-c">2.1</td>
										<td>Cá nhân cư trú</td>
										<td class="align-c"><b>[19]</b></td>
										<td class="align-c">Người</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct19)" /></td>
									</tr>
									<tr>
										<td class="align-c">2.2</td>
										<td>Cá nhân không cư trú</td>
										<td class="align-c"><b>[20]</b></td>
										<td class="align-c">Người</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct20)" /></td>
									</tr>
									<tr>
										<td class="align-c"><b>3</b></td>
										<td>Tổng số cá nhân thuộc diện được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần</td>
										<td class="align-c"><b>[21]</b></td>
										<td class="align-c">Người</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct21)" /></td>
									</tr>
									<tr>
										<td class="align-c"><b>4</b></td>
										<td><b>Tổng số cá nhân giảm trừ gia cảnh</b></td>
										<td class="align-c"><b>[22]</b></td>
										<td class="align-c">Người</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct22)" /></td>
									</tr>
									<tr>
										<td class="align-c"><b>5</b></td>
										<td><b>Tổng thu nhập chịu thuế trả cho cá nhân [23]=[24]+[25]</b></td>
										<td class="align-c"><b>[23]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct23)" /></td>
									</tr>
									<tr>
										<td class="align-c">5.1</td>
										<td>Cá nhân cư trú</td>
										<td class="align-c"><b>[24]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct24)" /></td>
									</tr>
									<tr>
										<td class="align-c">5.2</td>
										<td>Cá nhân không cư trú</td>
										<td class="align-c"><b>[25]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct25)" /></td>
									</tr>
									<tr>
										<td class="align-c">5.3</td>
										<td>Trong đó: Tổng thu nhập chịu thuế từ tiền phí mua bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác của doanh nghiệp bảo hiểm không thành lập tại Việt Nam cho người lao động</td>
										<td class="align-c"><b>[26]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct26)" /></td>
									</tr>
									<tr>
										<td class="align-c"><b>6</b></td>
										<td><b>Trong đó tổng thu nhập chịu thuế được miễn theo quy định của Hợp đồng dầu khí</b></td>
										<td class="align-c"><b>[27]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct27)" /></td>
									</tr>
									<tr>
										<td class="align-c"><b>7</b></td>
										<td><b>Tổng thu nhập chịu thuế trả cho cá nhân thuộc diện phải khấu trừ thuế [28]=[29]+[30]</b></td>
										<td class="align-c"><b>[28]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct28)" /></td>
									</tr>
									<tr>
										<td class="align-c">7.1</td>
										<td>Cá nhân cư trú</td>
										<td class="align-c"><b>[29]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct29)" /></td>
									</tr>
									<tr>
										<td class="align-c">7.2</td>
										<td>Cá nhân không cư trú</td>
										<td class="align-c"><b>[30]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct30)" /></td>
									</tr>
									<tr>
										<td class="align-c"><b>8</b></td>
										<td><b>Tổng số thuế thu nhập cá nhân đã khấu trừ [31]=[32]+[33]</b></td>
										<td class="align-c"><b>[31]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct31)" /></td>
									</tr>
									<tr>
										<td class="align-c">8.1</td>
										<td>Cá nhân cư trú</td>
										<td class="align-c"><b>[32]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct32)" /></td>
									</tr>
									<tr>
										<td class="align-c">8.2</td>
										<td>Cá nhân không cư trú</td>
										<td class="align-c"><b>[33]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct33)" /></td>
									</tr>
									<tr>
										<td class="align-c">8.3</td>
										<td>Trong đó: Tổng số thuế thu nhập cá nhân đã khấu trừ trên tiền phí mua bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác của doanh nghiệp bảo hiểm không thành lập tại Việt Nam cho người lao động </td>
										<td class="align-c"><b>[34]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ktru/ct34)" /></td>
									</tr>
									
									</table> 
									<br/>
									
									
									<div> <b>II. NGHĨA VỤ QUYẾT TOÁN THAY CHO CÁ NHÂN</b> </div>	
							<br/>
							<table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Chỉ tiêu</b></td>
										<td class="align-c"><b>Mã chỉ tiêu</b></td>
										<td class="align-c"><b>Đơn vị tính</b></td>
										<td class="align-c"><b>Số người/ Số tiền</b></td>
									</tr>
									
									<tr>
										<td class="align-c"><b>1</b></td>
										<td>Tổng số cá nhân uỷ quyền cho tổ chức, cá nhân trả thu nhập quyết toán thay</td>
										<td class="align-c"><b>[35]</b></td>
										<td class="align-c">Người</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($qtoan/ct35)" /></td>
									</tr>
									<tr>
										<td class="align-c" rowspan="2">1</td>
										<td>Tổng số thuế thu nhập cá nhân đã khấu trừ</td>
										<td class="align-c"><b>[36]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($qtoan/ct36)" /></td>
									</tr>
									<tr>
										<td>Trong đó: Số thuế thu nhập cá nhân đã khấu trừ tại tổ chức trước khi điều chuyển (trường hợp có đánh dấu vào chỉ tiêu [04])</td>
										<td class="align-c"><b>[37]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($qtoan/ct37)" /></td>
									</tr>
									<tr>
										<td class="align-c">3</td>
										<td>Tổng số thuế thu nhập cá nhân  phải nộp</td>
										<td class="align-c"><b>[38]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($qtoan/ct38)" /></td>
									</tr>
									<tr>
										<td class="align-c">4</td>
										<td>Tổng số thuế thu nhập cá nhân được miễn do cá nhân có số thuế còn phải nộp sau ủy quyền quyết toán từ 50.000 đồng trở xuống</td>
										<td class="align-c"><b>[39]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($qtoan/ct39)" /></td>
									</tr>
									<tr>
										<td class="align-c">5</td>
										<td>Tổng số thuế thu nhập cá nhân còn phải nộp</td>
										<td class="align-c"><b>[40]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($qtoan/ct40)" /></td>
									</tr>
									<tr>
										<td class="align-c">6</td>
										<td>Tổng số thuế thu nhập cá nhân đã nộp thừa </td>
										<td class="align-c"><b>[41]</b></td>
										<td class="align-c">VNĐ</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($qtoan/ct41)" /></td>
									</tr>
									
								</table>
		</div>	
		</div>
		
<table style="page-break-inside: avoid;" >
<tr>
<td>		   
	 <xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		 
	</xsl:template>		
</xsl:stylesheet>
