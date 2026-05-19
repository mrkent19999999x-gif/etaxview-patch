<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
  15/6/2015 của Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_05_KK_TNCN_TT80">
		<xsl:with-param name="mauTKhai"   select="'05/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho tổ chức, cá nhân trả các khoản thu nhập từ tiền lương, tiền công)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>

					<table class="tkhai_table">
						<tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c" ><b>Chỉ tiêu</b></td>
							<td class="align-c"><b>Mã chỉ tiêu</b></td>
							<td class="align-c"><b>Đơn vị tính</b></td>
							<td class="align-c"><b>Số người/Số tiền</b></td>
						</tr>
						<tr>
							<td class="align-c" rowspan="2"><b>1</b></td>
							<td><b>Tổng số người lao động:</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)"/></td>
							
						</tr>
						<tr>
							<td>Trong đó: Cá nhân cư trú có hợp đồng lao động</td>
							<td class="align-c"><b>[17]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)"/></td>
							
						</tr>
						<tr>
							<td class="align-c"><b>2</b></td>
							<td><b>Tổng số cá nhân đã khấu trừ thuế [18]=[19]+[20]</b></td>
							<td class="align-c"><b>[18]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)"/></td>
							
						</tr>
						<tr>
						   <td class="align-c">2.1</td>
							<td>Cá nhân cư trú</td>
							<td class="align-c"><b>[19]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">2.2</td>
							<td>Cá nhân không cư trú</td>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)"/></td>
							
						</tr>
						<tr>
							<td class="align-c"><b>3</b></td>
							<td><b>Tổng thu nhập chịu thuế (TNCT) trả cho cá nhân [21]=[22]+[23]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
							
						</tr>
						<tr>
						    <td class="align-c">3.1</td>
							<td>Cá nhân cư trú</td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">3.2</td>
							<td>Cá nhân không cư trú</td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>	
						</tr>
						<tr>
							<td class="align-c">3.3</td>
							<td>Trong đó: Tổng thu nhập chịu thuế từ tiền phí mua bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác của doanh nghiệp bảo hiểm không thành lập tại Việt Nam cho người lao động</td>
							<td class="align-c"><b>[24]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>	
						</tr>
						<tr>
							<td class="align-c"><b>4</b></td>
							<td><b>Trong đó tổng thu nhập chịu thuế được miễn theo quy định của Hợp đồng dầu khí</b></td>
							<td class="align-c"><b>[25]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						</tr>
						<tr>
							<td class="align-c"><b>5</b></td>
							<td><b>Tổng  thu nhập chịu thuế trả cho cá nhân thuộc diện phải khấu trừ thuế [26]=[27]+[28]</b></td>
							<td class="align-c"><b>[26]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>	
						</tr>
						<tr>
							<td class="align-c">5.1</td>
							<td>Cá nhân cư trú</td>
							<td class="align-c"><b>[27]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>	
						</tr>
						<tr>
							<td class="align-c">5.2</td>
							<td>Cá nhân không cư trú</td>
							<td class="align-c"><b>[28]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						</tr>
						<tr>
							<td class="align-c"><b>6</b></td>
							<td>Tổng số thuế thu nhập cá nhân đã khấu trừ [29]=[30]+[31]</td>
							<td class="align-c"><b>[29]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>	
						</tr>
						<tr>
						    <td class="align-c">6.1</td>
							<td>Cá nhân cư trú</td>
							<td class="align-c"><b>[30]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">6.2</td>
							<td>Cá nhân không cư trú</td>
							<td class="align-c"><b>[31]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>	
						</tr>
						<tr>
							<td class="align-c">6.3</td>
							<td>Trong đó: Tổng số thuế thu nhập cá nhân đã khấu trừ trên tiền phí mua bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác của doanh nghiệp bảo hiểm không thành lập tại Việt Nam cho người lao động </td>
							<td class="align-c"><b>[32]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>	
						</tr>
					</table>
		</div>	
		</div>
			<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	   
	 <xsl:call-template name="tkhaiFooter"/>
	 <div><b><u><i>Ghi chú: </i></u> </b></div>
		<div><i>- Tờ khai này chỉ áp dụng đối với tổ chức, cá nhân phát sinh trả thu nhập từ tiền lương, tiền công cho cá nhân trong tháng/quý, không phân biệt có phát sinh khấu trừ thuế hay không phát sinh khấu trừ thuế.</i></div>
		<div><i>- Kỳ khai thuế theo tháng áp dụng đối với tổ chức, cá nhân trả thu nhập có tổng doanh thu bán hàng hóa và cung cấp dịch vụ của năm trước liền kề trên 50 tỷ đồng hoặc trường hợp tổ chức, cá nhân trả thu nhập lựa chọn khai thuế theo tháng.</i></div>
		<div><i>- Kỳ khai thuế theo quý áp dụng đối với tổ chức, cá nhân trả thu nhập có tổng doanh thu bán hàng hóa và cung cấp dịch vụ của năm trước liền kề từ 50 tỷ đồng trở xuống, bao gồm cả tổ chức, cá nhân trả thu nhập không phát sinh doanh thu bán hàng hóa và cung cấp dịch vụ.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	 
	</xsl:template>		
</xsl:stylesheet>