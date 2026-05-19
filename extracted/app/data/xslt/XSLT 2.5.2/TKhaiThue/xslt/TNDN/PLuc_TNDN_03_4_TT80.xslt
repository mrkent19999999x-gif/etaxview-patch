<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!-- Phụ lục PL 03-4/TNDN -->
	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_4_TNDN">	
		<xsl:variable name="pl03-4-tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_4_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-4/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐÃ NỘP Ở NƯỚC NGOÀI'"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Tên và địa chỉ của Người nộp thuế khấu trừ thuế ở nước ngoài</b></td>
							   <td class="align-c" rowspan="2"><b>Địa chỉ của NNT khấu trừ thuế ở nước ngoài</b></td>
							   <td class="align-c" rowspan="2"><b>Quốc gia</b></td>
							   <td class="align-c" rowspan="2"><b>Thu nhập nhận được ở nước ngoài</b></td>
							   <td class="align-c" rowspan="2"><b>Thuế thu nhập đã nộp ở nước ngoài cho phần thu nhập nhận đuợc </b></td>
							   <td class="align-c" rowspan="2"><b>Thu nhập chịu thuế theo Luật thuế TNDN </b></td>
   							   <td class="align-c" colspan="3"><b>Xác định thuế thu nhập đã nộp ở nước ngoài được trừ </b></td>
							</tr>
							<tr>
                               <td class="align-c"><b>Thuế suất thuế TNDN (%)</b></td>
                               <td class="align-c"><b>Số thuế phải nộp theo Luật thuế TNDN</b></td>
                               <td class="align-c"><b>Số thuế đã nộp ở nước ngoài được trừ</b></td>
							</tr>
                            <tr>
								<td class="align-c"><i>(1)</i></td>
								<td class="align-c"><i>(2a)</i></td>
								<td class="align-c"><i>(2b)</i></td>
								<td class="align-c"><i>(2c)</i></td>
								<td class="align-c"><i>(3)</i></td>
								<td class="align-c"><i>(4)</i></td>
								<td class="align-c"><i>(5)= (3)+(4)</i></td>
								<td class="align-c"><i>(6)</i></td>
								<td class="align-c"><i>(7)= (5)x(6)</i></td>
								<td class="align-c"><i>(8)</i></td>
							</tr>
							<xsl:for-each select="$pl03-4-tndn/ChiTiet_Pluc">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct2a"/></td>
							  <td class="align-l"><xsl:value-of select="ct2b"/></td>
							  <td class="align-l"><xsl:value-of select="ct2c_ten"/></td>
							  <td class="number align-r"><xsl:value-of select="ct3"/></td>
      						  <td class="number align-r"><xsl:value-of select="ct4"/></td>
							  <td class="number align-r"><xsl:value-of select="ct5"/></td>
							  <td class="number align-r"><xsl:value-of select="ct6"/></td>
      						  <td class="number align-r"><xsl:value-of select="ct7"/></td>
                              <td class="number align-r"><xsl:value-of select="ct8"/></td>      						  
							  </tr>
							</xsl:for-each>
						    <tr>
						        <td></td>
						        <td class="align-c" colspan='3'><b>Tổng cộng</b></td>
						        <td></td>
						        <td></td>
								<td></td>
								<td></td>
						        <td></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4-tndn/tong04"/></b></td>
						    </tr> 
					</table>  
		      </div>
			</div>
					<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>					
			<xsl:call-template name="tkhaiFooter"/>	
			<div>- Tài liệu đính kèm gồm:</div>
			<div>+ Bản chụp Tờ khai thuế thu nhập ở nước ngoài có xác nhận của người nộp thuế;</div>
			<div>+ Bản chụp chứng từ nộp thuế ở nước ngoài có xác nhận của người nộp thuế hoặc bản gốc xác nhận của cơ quan thuế nước ngoài về số thuế đã nộp hoặc bản chụp chứng từ có giá trị tương đương có xác nhận của người nộp thuế.</div>
			<div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp;</i></div>
			<div><i>- Số liệu chỉ tiêu [04] được tổng hợp vào chỉ tiêu C16 của Tờ khai 03/TNDN.</i></div>
							<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!-- Kết thúc PL 03-4/TNDN -->
	   
	</xsl:template>		
</xsl:stylesheet>