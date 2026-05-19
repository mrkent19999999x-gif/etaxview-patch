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
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'05/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
  15/6/2015 của Bộ Tài chính'"/>
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
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
							
						</tr>
						<tr>
							<td>Trong đó: Cá nhân cư trú có hợp đồng lao động</td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
							
						</tr>
						<tr>
							<td class="align-c"><b>2</b></td>
							<td><b>Tổng số cá nhân đã khấu trừ thuế [23]=[24]+[25]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
							
						</tr>
						<tr>
						   <td class="align-c">2.1</td>
							<td>Cá nhân cư trú</td>
							<td class="align-c"><b>[24]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">2.2</td>
							<td>Cá nhân không cư trú</td>
							<td class="align-c"><b>[25]</b></td>
							<td class="align-c">Người</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
							
						</tr>
						<tr>
							<td class="align-c"><b>3</b></td>
							<td><b>Tổng thu nhập chịu thuế (TNCT) trả cho cá nhân [26]=[27]+[28]</b></td>
							<td class="align-c"><b>[26]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
							
						</tr>
						<tr>
						    <td class="align-c">3.1</td>
							<td>Cá nhân cư trú</td>
							<td class="align-c"><b>[27]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">3.2</td>
							<td>Cá nhân không cư trú</td>
							<td class="align-c"><b>[28]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
							
						</tr>
						<tr>
							<td class="align-c"><b>4</b></td>
							<td><b>Tổng TNCT trả cho cá nhân thuộc diện phải khấu trừ thuế [29]=[30]+[31] </b></td>
							<td class="align-c"><b>[29]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">4.1</td>
							<td>Cá nhân cư trú</td>
							<td class="align-c"><b>[30]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">4.2</td>
							<td>Cá nhân không cư trú</td>
							<td class="align-c"><b>[31]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
							
						</tr>
						<tr>
							<td class="align-c"><b>5</b></td>
							<td><b>Tổng số thuế thu nhập cá nhân đã khấu trừ [32]=[33]+[34]</b></td>
							<td class="align-c"><b>[32]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">5.1</td>
							<td>Cá nhân cư trú</td>
							<td class="align-c"><b>[33]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">5.2</td>
							<td>Cá nhân không cư trú</td>
							<td class="align-c"><b>[34]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
							
						</tr>
					
						<tr>
							<td class="align-c"><b>6</b></td>
							<td>Tổng TNCT từ tiền phí mua bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác của doanh nghiệp bảo hiểm không thành lập tại Việt Nam cho người lao động]</td>
							<td class="align-c"><b>[35]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
							
						</tr>
						<tr>
							<td class="align-c"><b>7</b></td>
							<td>Tổng số thuế TNCN đã khấu trừ trên tiền phí mua bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác của doanh nghiệp bảo hiểm không thành lập tại Việt Nam cho người lao động </td>
							<td class="align-c"><b>[36]</b></td>
							<td class="align-c">VNĐ</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
							
						</tr>
					</table>
 

			
		</div>	
		</div>
			<xsl:call-template name="tkhaiFooter"></xsl:call-template>
	</xsl:template>		
</xsl:stylesheet>