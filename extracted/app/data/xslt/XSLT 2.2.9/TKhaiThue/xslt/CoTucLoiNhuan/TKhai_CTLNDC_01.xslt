<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 61/2016/TT-BTC ngày
11/4/2016 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_CTLNDC_01">
		<xsl:with-param name="mauTKhai"   select="'01/CTLNĐC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
               <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <b>STT</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Mã chỉ tiêu</b></td>
						<td class="align-c"><b>Số tiền</b></td>
					</tr>
				
					<tr>
						<td class="align-c">1</td>
						<td class="align-c">2</td>
						<td class="align-c">3</td>
						<td class="align-c">4</td>
					</tr>
					<tr>
						  <td class="align-c">1</td>
						   <td class="align-l">Tổng số cổ tức của công ty cổ phần, lợi nhuận của công ty trách nhiệm hữu hạn hai thành viên trở lên chia theo Nghị quyết của Đại hội đồng cổ đông, Hội đồng quản trị hoặc quyết định của Hội đồng thành viên</td>
						   <td class="align-c">[23]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct23"/></td>
				</tr>
				<tr>
						  <td class="align-c">2</td>
						   <td class="align-l">Tỷ lệ vốn góp của Nhà nước trong công ty cổ phần, công ty trách nhiệm hữu hạn hai thành viên trở lên (%)</td>
						   <td class="align-c">[24]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct24"/></td>
				</tr>		
					<tr>
						  <td class="align-c">3</td>
						   <td class="align-l">Số cổ tức, lợi nhuận được chia cho phần vốn nhà nước phải nộp ngân sách nhà nước của công ty cổ phần, công ty trách nhiệm hữu hạn hai thành viên trở lên.</td>
						   <td class="align-c">[25]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct25"/></td>
				</tr>		
						</table>
				
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_01DNHT"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

