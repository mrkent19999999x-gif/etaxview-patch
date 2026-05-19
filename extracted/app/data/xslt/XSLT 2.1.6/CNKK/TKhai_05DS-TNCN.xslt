<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeader_05-DS-TNCN">
		<xsl:with-param name="mauTKhai"   select="'05/DS-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày 15/6/2015 của Bộ Tài chính)'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân trả thu nhập giải thể, chấm dứt hoạt động 
  có phát sinh trả thu nhập nhưng không phát sinh khấu trừ thuế thu nhập cá nhân)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>


					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Họ và tên</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
							<td class="align-c" rowspan="2"><b>Số CMND/Hộ chiếu</b></td>
							<td class="align-c" rowspan="2"><b>Thu nhập chịu thuế</b></td>
							<td class="align-c" colspan="4"><b>Các khoản giảm trừ</b></td>
							<td class="align-c" rowspan="2"><b>Thu nhập tính thuế</b></td>
							
						</tr>
						<tr>
							<td class="align-c">Tổng số tiền giảm trừ gia cảnh</td>
							<td class="align-c">Từ thiện, nhân đạo, khuyến học</td>
							<td class="align-c">Bảo hiểm được trừ</td>
							<td class="align-c">Quĩ hưu trí tự nguyện được trừ</td>
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
							
						</tr>
					 <xsl:for-each select="$tkchinh/DSachCNNhanTN">
	                <xsl:variable name="currentRows" select='position()' />
	<tr>
	<td class="align-c"><xsl:value-of select="$currentRows" /></td>
							<td><xsl:value-of select="ct07" /></td>
							<td class="align-r"><xsl:value-of select="ct08" /></td>
							<td><xsl:value-of select="ct09" /></td>
							<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)" /></td>
							<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							<td  class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)" /></td>
							<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct15)" /></td>
						</tr>
						</xsl:for-each>
						
						<tr>
							<td class="align-c" colspan="4" ><b>Tổng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)" /></b></td>
						</tr>
					</table>
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter"/>
	</xsl:template>		
</xsl:stylesheet>